import 'const.dart';

/// {@template sign_in_with_email_and_password_exception}
///
/// Exception thrown when sign in with email and password fails.
///
/// {@endtemplate}
class SignUpWithEmailAndPasswordException implements Exception {
  /// {@macro sign_in_with_email_and_password_exception}
  SignUpWithEmailAndPasswordException([
    this.message = 'An unknown error occured',
  ]);

  /// Create an authentication message from a
  /// [FirebaseAuthException] code.
  factory SignUpWithEmailAndPasswordException.fromCode(String code) {
    final AuthResultStatus status = AuthResultStatus(code);
    switch (status.value) {
      case AuthResultStatusEnum.invalidEmail:
        return SignUpWithEmailAndPasswordException(
          'Email is not valid or badly formatted.',
        );
      case AuthResultStatusEnum.userDisabled:
        return SignUpWithEmailAndPasswordException(
          'Your account has been disabled. Please contact support for help.',
        );
      case AuthResultStatusEnum.emailAlreadyInUse:
        return SignUpWithEmailAndPasswordException(
          'Your email is already in use. Please sign in instead.',
        );
      case AuthResultStatusEnum.operationNotAllowed:
        return SignUpWithEmailAndPasswordException(
          'This operation is not allowed. Please contact support for help.',
        );
      case AuthResultStatusEnum.weakPassword:
        return SignUpWithEmailAndPasswordException(
          'Please enter a stronger password.',
        );
      default:
        return SignUpWithEmailAndPasswordException();
    }
  }

  /// The associated error message.
  final String message;
}

/// {@template sign_in_with_email_and_password_exception}
///
/// Exception thrown when sign in with email and password fails.
///
/// {@endtemplate}
class SignInWithEmailAndPasswordException implements Exception {
  /// {@macro sign_in_with_email_and_password_exception}
  SignInWithEmailAndPasswordException([
    this.message = 'An unknown error occured, please try again.',
  ]);

  /// Create an authentication message from a
  /// [FirebaseAuthException] code.
  factory SignInWithEmailAndPasswordException.fromCode(String code) {
    final AuthResultStatus status = AuthResultStatus(code);
    switch (status.value) {
      case AuthResultStatusEnum.invalidEmail:
        return SignInWithEmailAndPasswordException(
          'Email is not valid or badly formatted.',
        );
      case AuthResultStatusEnum.userDisabled:
        return SignInWithEmailAndPasswordException(
          'Your account has been disabled. Please contact support for help.',
        );
      case AuthResultStatusEnum.userNotFound:
        return SignInWithEmailAndPasswordException(
          'Email not found, please try again.',
        );
      case AuthResultStatusEnum.wrongPassword:
        return SignInWithEmailAndPasswordException(
          'Incorrect password, please try again.',
        );
      default:
        return SignInWithEmailAndPasswordException();
    }
  }

  /// The associated error message.
  final String message;
}

/// {@template sign_in_with_google_exception}
///
/// Thrown during the sign in with google process if a failure occurs.
///
/// {@endtemplate}
class SignInWithCredentialException implements Exception {
  /// {@macro sign_in_with_google_exception}
  SignInWithCredentialException({
    this.message = 'An unknown error occured.',
  });

  /// Create an authentication message from a
  /// [FirebaseAuthException] code.
  factory SignInWithCredentialException.fromCode(String code) {
    AuthResultStatus status = AuthResultStatus(code);
    switch (status.value) {
      case AuthResultStatusEnum.accountExistsWithDifferentCredential:
        return SignInWithCredentialException(
          message: 'Account already exists with a different credential.',
        );
      case AuthResultStatusEnum.invalidCredential:
        return SignInWithCredentialException(
          message: 'The credential received is malformed or has expired.',
        );
      case AuthResultStatusEnum.operationNotAllowed:
        return SignInWithCredentialException(
          message: 'Operation not allowed. Please contact support for help.',
        );
      case AuthResultStatusEnum.userDisabled:
        return SignInWithCredentialException(
          message:
              'Your account has been disabled. Please contact support for help.',
        );
      case AuthResultStatusEnum.userNotFound:
        return SignInWithCredentialException(
          message: 'User with this email does not exist.',
        );
      case AuthResultStatusEnum.wrongPassword:
        return SignInWithCredentialException(
          message: 'Incorrect password, please try again.',
        );
      case AuthResultStatusEnum.invalidVerificationCode:
        return SignInWithCredentialException(
          message:
              'The verification code received is invalid. Please try again.',
        );
      case AuthResultStatusEnum.invalidVerificationId:
        return SignInWithCredentialException(
          message: 'The verification ID received is invalid. Please try again.',
        );
      default:
        return SignInWithCredentialException();
    }
  }

  /// The associated error message.
  final String message;
}

/// {@template sign_out_exception}
///
/// Thrown during the sign out process if a failure occurs.
///
/// {@endtemplate}
class SignOutException implements Exception {}

/// {@template sign_in_anonymously_exception}
/// Thrown during the sign in anonymously process if a failure occurs.
/// {@endtemplate}
class SignInAnonymouslyException implements Exception {
  /// {@macro sign_in_anonymously_exception}
  SignInAnonymouslyException({
    this.message = 'An unknown error occured.',
  });

  /// Create an authentication message from a
  /// [FirebaseAuthException] code.
  factory SignInAnonymouslyException.fromCode(String code) {
    AuthResultStatus status = AuthResultStatus(code);
    switch (status.value) {
      case AuthResultStatusEnum.operationNotAllowed:
        return SignInAnonymouslyException(
          message: 'Operation not allowed. Please contact support for help.',
        );
      default:
        return SignInAnonymouslyException();
    }
  }

  /// The associated error message.
  final String message;
}

/// {@template sign_in_with_apple_exception}
/// Thrown during the sign in with apple process if a failure occurs.
/// {@endtemplate}
class SignInWithAppleException implements Exception {}
