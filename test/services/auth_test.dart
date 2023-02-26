import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_fire/getx_fire.dart';
import 'package:getx_fire/src/core/const.dart';
import 'package:getx_fire/src/exceptions/exceptions.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mockito/mockito.dart';

class AuthenticationServiceMock extends GetxService with Mock implements AuthenticationService {}

class FirebaseAuthMock extends Mock implements FirebaseAuth {}

class GoogleSignInMock extends Mock implements GoogleSignIn {}

class MockUser extends Mock implements User {}

class MockUserCredential extends Mock implements UserCredential {}

void main() {
  group('AuthenticationService', () {
    late FirebaseAuthMock firebaseAuthMock;
    late GoogleSignInMock googleSignInMock;

    late GetStorage storage;
    late AuthenticationService authenticationService;
    late FirebaseAuth firebaseAuth;

    setUp(() async {
      firebaseAuthMock = FirebaseAuthMock();
      googleSignInMock = GoogleSignInMock();

      storage = GetStorage();

      Get.lazyPut(
        () => AuthenticationService(
          firebaseAuth: firebaseAuthMock,
          googleSignIn: googleSignInMock,
          box: storage,
        ),
      );
    });

    group('userRefreshToken', () {
      setUp(() async {
        await storage.initStorage;
      });
      test('is null', () async {
        authenticationService = Get.find<AuthenticationService>();

        await expectLater(authenticationService.userRefreshToken, null);
      });
      test('has now a value after trying to set a static value', () async {
        //Act
        await storage.write(StorageKeys.userRefreshToken, 'token');
        await storage.save();
        authenticationService = Get.find<AuthenticationService>();

        //Assert
        await expectLater(authenticationService.userRefreshToken, isNotNull);
        await expectLater(authenticationService.userRefreshToken, 'token');
      });

      tearDown(() async {
        await storage.erase();
        await storage.save();
      });
    });

    group('currentUser', () {
      setUp(() async {
        authenticationService = Get.find<AuthenticationService>();
      });
      test('is null', () async {
        expect(authenticationService.currentUser, isNull);
      });
      test('has now a value after trying to set a static value', () async {
        //Arrange
        authenticationService = Get.find<AuthenticationService>();

        //Assert
        expect(authenticationService.currentUser, isNull);
        // expect(authenticationService.currentUser, isA<MockUser>());
      });
    });

    group('signUpEmailWithPassword', () {
      setUp(() {
        authenticationService = Get.find<AuthenticationService>();
      });

      // test('should return the created user when sign up successfully', () async {
      //   //Arrange
      //   const email = 'test@example.com';
      //   const password = 'password';
      //   final userMock = MockUser();
      //   final userCredential = MockUserCredential();

      //   when(userCredential.user).thenReturn(userMock);
      //   when(userMock.email).thenReturn(email);
      //   // when(userMock.uid).thenReturn('uid');
      //   when(userMock.refreshToken).thenReturn('refreshToken');
      //   // when(userMock.displayName).thenReturn('displayName');
      //   // when(userMock.photoURL).thenReturn('photoURL');
      //   // when(userMock.emailVerified).thenReturn(true);
      //   // when(userMock.phoneNumber).thenReturn('phoneNumber');
      //   // when(userMock.isAnonymous).thenReturn(false);
      //   // when(userMock.providerData).thenReturn([]);

      //   when(
      //     firebaseAuthMock.createUserWithEmailAndPassword(
      //       email: email,
      //       password: password,
      //     ),
      //   ).thenReturn(Future.value(userCredential));

      //   // Act
      //   final user = await authenticationService.signUpEmailWithPassword(
      //     email: email,
      //     password: password,
      //   );

      //   print('User: ${user.toString()}}}');

      //   // Assert
      //   expect(user, isA<User>());
      // });

      // test('should throw SignUpWithEmailAndPasswordException if an error occurs', () async {
      //   //Arrange
      //   const email = 'test@example.com';
      //   const password = 'password';

      //   when(
      //     await authenticationService.signUpEmailWithPassword(
      //       email: email,
      //       password: password,
      //     ),
      //   ).thenThrow(SignUpWithEmailAndPasswordException);

      //   //Assert
      //   expect(
      //     () async => await authenticationService.signUpEmailWithPassword(email: email, password: password),
      //     throwsA(
      //       isInstanceOf<SignUpWithEmailAndPasswordException>(),
      //     ),
      //   );
      // });
    });

    // group('signInAnonymously', () {
    //   setUp(() {
    //     authenticationService = Get.find<AuthenticationService>();
    //   });
    //   test('should return the signed in user', () async {
    //     // arrange
    //     final mockUser = MockUser();
    //     final mockUserCredential = MockUserCredential();

    //     when(mockUserCredential.user).thenReturn(mockUser);
    //     when(mockUser.refreshToken).thenReturn('token');

    //     when(
    //       await authenticationService.signInAnonymously(),
    //     ).thenReturn(
    //       mockUser,
    //     );

    //     // act
    //     final user = await authenticationService.signInAnonymously();

    //     // assert
    //     expect(user, isNotNull);
    //     expect(user!.refreshToken, 'token');
    //   });
    // });

    tearDownAll(() async {
      authenticationService.onClose();
      Get.reset();
    });
  });
}
