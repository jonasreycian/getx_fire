import '../../core/const.dart';
import '../../enums/enums.dart';

/// {@template sign_in_anonymously_exception}
/// Thrown during the sign in anonymously process if a failure occurs.
/// {@endtemplate}
class SignInAnonymouslyException implements Exception {
  /// {@macro sign_in_anonymously_exception}
  SignInAnonymouslyException({
    this.code = FirebaseAuthCodeEnum.unknown,
    this.message = 'An unknown error occured.',
  });

  /// Create an authentication message from a
  /// [FirebaseAuthException] code.
  factory SignInAnonymouslyException.fromCode(String code) {
    AuthResultStatus status = AuthResultStatus(code);
    String message = '';
    switch (status.value) {
      case FirebaseAuthCodeEnum.operationNotAllowed:
        message = 'Operation not allowed. Please contact support for help.';
        break;

      default:
        message = 'An unknown error occured.';
    }

    return SignInAnonymouslyException(message: message, code: status.value);
  }

  /// The associated error message.
  final String message;

  /// The associated error code.
  final FirebaseAuthCodeEnum code;
}
