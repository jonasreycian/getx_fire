import '../../core/const.dart';
import '../../enums/enums.dart';

/// {@template sign_in_with_credential_exception}
///
/// Thrown during the sign in with google process if a failure occurs.
///
/// {@endtemplate}
class SignInWithCredentialException implements Exception {
  /// {@macro sign_in_with_credential_exception}
  SignInWithCredentialException({
    this.message = 'An unknown error occured.',
  });

  /// Create an authentication message from a
  /// [FirebaseAuthException] code.
  factory SignInWithCredentialException.fromCode(String code) {
    AuthResultStatus status = AuthResultStatus(code);
    switch (status.value) {
      case FirebaseAuthCodeEnum.accountExistsWithDifferentCredential:
        return SignInWithCredentialException(
          message: 'Account already exists with a different credential.',
        );
      case FirebaseAuthCodeEnum.invalidCredential:
        return SignInWithCredentialException(
          message: 'The credential received is malformed or has expired.',
        );
      case FirebaseAuthCodeEnum.operationNotAllowed:
        return SignInWithCredentialException(
          message: 'Operation not allowed. Please contact support for help.',
        );
      case FirebaseAuthCodeEnum.userDisabled:
        return SignInWithCredentialException(
          message: 'Your account has been disabled. Please contact support for help.',
        );
      case FirebaseAuthCodeEnum.userNotFound:
        return SignInWithCredentialException(
          message: 'User with this email does not exist.',
        );
      case FirebaseAuthCodeEnum.wrongPassword:
        return SignInWithCredentialException(
          message: 'Incorrect password, please try again.',
        );
      case FirebaseAuthCodeEnum.invalidVerificationCode:
        return SignInWithCredentialException(
          message: 'The verification code received is invalid. Please try again.',
        );
      case FirebaseAuthCodeEnum.invalidVerificationId:
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
