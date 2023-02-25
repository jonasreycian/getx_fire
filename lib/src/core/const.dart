/// {@template auth_result_status_enum}
///
/// Enum collection of error status of the authentication result.
///
/// {@endtemplate}
enum AuthResultStatusEnum {
  invalidEmail,
  userDisabled,
  emailAlreadyInUse,
  operationNotAllowed,
  weakPassword,
  userNotFound,
  accountExistsWithDifferentCredential,
  invalidCredential,
  wrongPassword,
  invalidVerificationCode,
  invalidVerificationId,
  unknown,
}

/// {@template auth_result_status}
///
/// Error status of the authentication result.
///
/// @param [code] The error code of the authentication result.
///
/// {@endtemplate}
class AuthResultStatus {
  final String code;

  AuthResultStatus(this.code);

  AuthResultStatusEnum get value {
    switch (code) {
      case 'invalid-email':
        return AuthResultStatusEnum.invalidEmail;
      case 'user-disabled':
        return AuthResultStatusEnum.userDisabled;
      case 'email-already-in-use':
        return AuthResultStatusEnum.emailAlreadyInUse;
      case 'operation-not-allowed':
        return AuthResultStatusEnum.operationNotAllowed;
      case 'weak-password':
        return AuthResultStatusEnum.weakPassword;
      case 'user-not-found':
        return AuthResultStatusEnum.userNotFound;
      case 'account-exists-with-different-credential':
        return AuthResultStatusEnum.accountExistsWithDifferentCredential;
      case 'invalid-credential':
        return AuthResultStatusEnum.invalidCredential;
      case 'wrong-password':
        return AuthResultStatusEnum.wrongPassword;
      case 'invalid-verification-code':
        return AuthResultStatusEnum.invalidVerificationCode;
      case 'invalid-verification-id':
        return AuthResultStatusEnum.invalidVerificationId;
      default:
        return AuthResultStatusEnum.unknown;
    }
  }
}

abstract class StorageKeys {
  String userToken = "userToken";
}
