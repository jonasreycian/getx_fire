import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import '../../getx_fire.dart';
import '../core/const.dart';
import '../core/helpers.dart';
import '../exceptions/exceptions.dart';
import '../models/models.dart';

/// {@template authentication_service}
/// A service that handles authentication.
/// {@endtemplate}
class AuthenticationService extends GetxService {
  /// {@macro authentication_service}
  AuthenticationService({
    FirebaseAuth? firebaseAuth,
    GoogleSignIn? googleSignIn,
    GetStorage? box,
  })  : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn(),
        _box = box ?? GetStorage()
          ..initStorage;

  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final GetStorage _box;

  @override
  void onInit() async {
    super.onInit();
    print('AuthenticationService initialized');
    await _box.writeIfNull(StorageKeys.userRefreshToken, currentUser?.refreshToken);
  }

  /// Gets the current user token.
  String? get userRefreshToken => _box.read<String?>(StorageKeys.userRefreshToken);

  /// Returns the current user.
  User? get currentUser => _firebaseAuth.currentUser;

  bool get isActiveUserToken => userRefreshToken != null && currentUser?.refreshToken == userRefreshToken;

  /// Stream of [User] which will emit the current user when
  /// the authentication state changes.
  ///
  /// Emits [User] when the user is not authenticated.
  Stream<User?> get user {
    return _firebaseAuth.authStateChanges().map(
      (firebaseUser) {
        _box.writeIfNull(StorageKeys.userRefreshToken, firebaseUser?.refreshToken);
        return firebaseUser;
      },
    );
  }

  /// Creates a new [User] with the given [email] and [password].
  ///
  /// Returns the created [User].
  ///
  /// Throws an [AuthenticationException] if an error occurs.
  Future<User?> signUpEmailWithPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user;
    } on FirebaseAuthException catch (e) {
      throw SignUpWithEmailAndPasswordException.fromCode(e.code);
    } catch (e) {
      throw SignUpWithEmailAndPasswordException();
    }
  }

  /// Signs in a user aninoymously.
  ///
  /// Returns the signed in [User].
  ///
  /// Throws an [SignInAnonymouslyException] if an error occurs.
  Future<User?> signInAnonymously() async {
    try {
      final credential = await _firebaseAuth.signInAnonymously();
      return credential.user;
    } on FirebaseAuthException catch (e) {
      throw SignInAnonymouslyException.fromCode(e.code);
    } catch (e) {
      throw SignInAnonymouslyException();
    }
  }

  /// Signs in with the given [email] and [password].
  ///
  /// Returns the signed in [User].
  ///
  /// Throws an [SignInWithEmailAndPasswordException] if an error occurs.
  Future<User?> signInEmailWithPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user;
    } on FirebaseAuthException catch (e) {
      throw SignInWithEmailAndPasswordException.fromCode(e.code);
    } catch (e) {
      throw SignInWithEmailAndPasswordException();
    }
  }

  /// Signs in with Google.
  ///
  /// Returns the signed in [UserDetail].
  ///
  /// Throws a [SignInWithCredentialException] if an error occurs.
  Future<UserDetail> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        throw SignInWithCredentialException();
      }
      final googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final parsedGoogleToken = Helpers.parseGoogleToken(googleAuth.idToken);
      final authResult = await signInWithCredential(credential: credential);

      return UserDetail(
        id: authResult.user!.uid,
        firstName: parsedGoogleToken?.givenName,
        lastName: parsedGoogleToken?.familyName,
      );
    } on FirebaseAuthException catch (e) {
      // If there already exists an account with the email address asserted by
      // the credential. Resolve this by calling [fetchSignInMethodsForEmail]
      // and then asking the user to sign in using one of the returned
      // providers. Once the user is signed in, the original credential can be
      // linked to the user with [linkWithCredential].

      // AuthResultStatus status = AuthResultStatus(e.code);
      // if (status.value == FirebaseAuthCodeEnum.accountExistsWithDifferentCredential) {
      //   final response = await _firebaseAuth.fetchSignInMethodsForEmail('email');
      //   if (response.contains('google.com')) {
      //     final x = await _firebaseAuth.signInWithPopup(GoogleAuthProvider());
      //     await _firebaseAuth.currentUser?.linkWithCredential(x.credential!);
      //   }
      // }
      throw SignInWithCredentialException.fromCode(e.code);
    } catch (e) {
      throw SignInWithCredentialException();
    }
  }

  /// Signs in with credentials.
  ///
  /// Returns the signed in [UserCredential].
  ///
  /// Throws a [SignInWithCredentialException] if an error occurs.
  Future<UserCredential> signInWithCredential({required OAuthCredential credential}) async {
    try {
      return await _firebaseAuth.signInWithCredential(credential);
    } on FirebaseAuthException catch (e) {
      throw SignInWithCredentialException.fromCode(e.code);
    } catch (e) {
      throw SignInWithCredentialException();
    }
  }

  /// Signs in with Apple.
  ///
  /// Returns the signed in [UserDetail].
  ///
  /// Throws a [SignInWithCredentialException] if an error occurs.
  Future<UserDetail> signInWithApple() async {
    try {
      // To prevent replay attacks with the credential returned from Apple, we
      // include a nonce in the credential request. When signing in with
      // Firebase, the nonce in the id token returned by Apple, is expected to
      // match the sha256 hash of `rawNonce`.
      final rawNonce = Helpers.generateNonce();
      final nonce = Helpers.sha256ofString(rawNonce);

      // Request credential for the currently signed in Apple account.
      final appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
        nonce: nonce,
        // webAuthenticationOptions: WebAuthenticationOptions(
        //   clientId: "firebase.com.kuyamanggi.coffeebrainph",
        //   redirectUri: Uri.parse(
        //     'https://pluralsight-firebase-flutter.glitch.me/callbacks/sign_in_with_apple',
        //   ),
        // ),
      );

      // Create an `OAuthCredential` from the credential returned by Apple.
      final oauthCredential = OAuthProvider('apple.com').credential(
        idToken: appleCredential.identityToken,
        accessToken: appleCredential.authorizationCode,
        rawNonce: rawNonce,
      );

      // Sign in the user with Firebase. If the nonce we generated earlier does
      // not match the nonce in `appleCredential.identityToken`, sign in will fail.
      final authResult = await signInWithCredential(credential: oauthCredential);

      return UserDetail(
        id: authResult.user!.uid,
        firstName: appleCredential.givenName,
        lastName: appleCredential.familyName,
      );
    } on SignInWithAppleNotSupportedException catch (e) {
      throw SignInWithCredentialException(message: e.message);
    } on SignInWithAppleAuthorizationException catch (e) {
      throw SignInWithCredentialException(message: e.message);
    } on UnknownSignInWithAppleException catch (e) {
      throw SignInWithCredentialException(message: e.message ?? 'Unknown error');
    } on SignInWithCredentialException catch (_) {
      rethrow;
    } catch (e) {
      throw SignInWithCredentialException();
    }
  }

  /// Signs out the current user.
  ///
  /// It also signs out the user from Google.
  ///
  /// Throws a [SignOutException] if an error occurs.
  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
      await _googleSignIn.signOut();
      _box.remove(StorageKeys.userRefreshToken);
    } catch (e) {
      throw SignOutException();
    }
  }
}
