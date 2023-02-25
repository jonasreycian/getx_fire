import '../../core/const.dart';
import '../../enums/enums.dart';

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
      case FirebaseAuthCodeEnum.invalidEmail:
        return SignInWithEmailAndPasswordException(
          'Email is not valid or badly formatted.',
        );
      case FirebaseAuthCodeEnum.userDisabled:
        return SignInWithEmailAndPasswordException(
          'Your account has been disabled. Please contact support for help.',
        );
      case FirebaseAuthCodeEnum.userNotFound:
        return SignInWithEmailAndPasswordException(
          'Email not found, please try again.',
        );
      case FirebaseAuthCodeEnum.wrongPassword:
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
