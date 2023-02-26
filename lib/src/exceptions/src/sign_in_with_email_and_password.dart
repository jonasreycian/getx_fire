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
    this.code = FirebaseAuthCodeEnum.unknown,
    this.message = 'An unknown error occured, please try again.',
  ]);

  /// Create an authentication message from a
  /// [FirebaseAuthException] code.
  factory SignInWithEmailAndPasswordException.fromCode(String code) {
    final AuthResultStatus status = AuthResultStatus(code);
    String message = '';
    switch (status.value) {
      case FirebaseAuthCodeEnum.invalidEmail:
        message = 'Email is not valid or badly formatted.';
        break;

      case FirebaseAuthCodeEnum.userDisabled:
        message = 'Your account has been disabled. Please contact support for help.';
        break;

      case FirebaseAuthCodeEnum.userNotFound:
        message = 'Email not found, please try again.';
        break;

      case FirebaseAuthCodeEnum.wrongPassword:
        message = 'Incorrect password, please try again.';
        break;

      default:
        message = 'An unknown error occured, please try again.';
    }

    return SignInWithEmailAndPasswordException(status.value, message);
  }

  /// The associated error message.
  final String message;

  /// The associated error code.
  final FirebaseAuthCodeEnum code;
}
