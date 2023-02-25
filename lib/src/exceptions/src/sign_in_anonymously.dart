import '../../core/const.dart';
import '../../enums/enums.dart';

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
      case FirebaseAuthCodeEnum.operationNotAllowed:
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
