import '../../core/const.dart';
import '../../enums/enums.dart';

/// {@template sign_up_with_email_and_password_exception}
///
/// Exception thrown when sign in with email and password fails.
///
/// {@endtemplate}
class SignUpWithEmailAndPasswordException implements Exception {
  /// {@macro sign_up_with_email_and_password_exception}
  SignUpWithEmailAndPasswordException([
    this.message = 'An unknown error occured.',
    this.code = FirebaseAuthCodeEnum.unknown,
  ]);

  /// Create an authentication message from a
  /// [FirebaseAuthException] code.
  factory SignUpWithEmailAndPasswordException.fromCode(String code) {
    final AuthResultStatus status = AuthResultStatus(code);
    switch (status.value) {
      case FirebaseAuthCodeEnum.invalidEmail:
        return SignUpWithEmailAndPasswordException(
          'Email is not valid or badly formatted.',
          status.value,
        );
      case FirebaseAuthCodeEnum.userDisabled:
        return SignUpWithEmailAndPasswordException(
          'Your account has been disabled. Please contact support for help.',
          status.value,
        );
      case FirebaseAuthCodeEnum.emailAlreadyInUse:
        return SignUpWithEmailAndPasswordException(
          'Your email is already in use. Please sign in instead.',
          status.value,
        );
      case FirebaseAuthCodeEnum.operationNotAllowed:
        return SignUpWithEmailAndPasswordException(
          'This operation is not allowed. Please contact support for help.',
          status.value,
        );
      case FirebaseAuthCodeEnum.weakPassword:
        return SignUpWithEmailAndPasswordException(
          'Please enter a stronger password.',
          status.value,
        );
      default:
        return SignUpWithEmailAndPasswordException();
    }
  }

  /// The associated error message.
  final String message;

  /// The associated error code.
  final FirebaseAuthCodeEnum code;
}
