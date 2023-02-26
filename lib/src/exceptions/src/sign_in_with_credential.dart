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
    this.code = FirebaseAuthCodeEnum.unknown,
    this.message = 'An unknown error occured.',
  });

  /// Create an authentication message from a
  /// [FirebaseAuthException] code.
  factory SignInWithCredentialException.fromCode(String code) {
    AuthResultStatus status = AuthResultStatus(code);
    String message = '';
    switch (status.value) {
      case FirebaseAuthCodeEnum.accountExistsWithDifferentCredential:
        message = 'Account already exists with a different credential.';
        break;
      case FirebaseAuthCodeEnum.invalidCredential:
        message = 'The credential received is malformed or has expired.';
        break;

      case FirebaseAuthCodeEnum.operationNotAllowed:
        message = 'Operation not allowed. Please contact support for help.';
        break;

      case FirebaseAuthCodeEnum.userDisabled:
        message = 'Your account has been disabled. Please contact support for help.';
        break;

      case FirebaseAuthCodeEnum.userNotFound:
        message = 'User with this email does not exist.';
        break;

      case FirebaseAuthCodeEnum.wrongPassword:
        message = 'Incorrect password; please try again.';
        break;

      case FirebaseAuthCodeEnum.invalidVerificationCode:
        message = 'The verification code received is invalid. Please try again.';
        break;

      case FirebaseAuthCodeEnum.invalidVerificationId:
        message = 'The verification ID received is invalid. Please try again.';
        break;

      default:
        message = 'An unknown error occured.';
    }

    return SignInWithCredentialException(message: message, code: status.value);
  }

  /// The associated error message.
  final String message;

  /// The associated error code.
  final FirebaseAuthCodeEnum code;
}
