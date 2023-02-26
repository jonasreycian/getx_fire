import '../enums/src/firebase_auth_code.dart';

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

  FirebaseAuthCodeEnum get value {
    switch (code) {
      case 'invalid-email':
        return FirebaseAuthCodeEnum.invalidEmail;
      case 'user-disabled':
        return FirebaseAuthCodeEnum.userDisabled;
      case 'email-already-in-use':
        return FirebaseAuthCodeEnum.emailAlreadyInUse;
      case 'operation-not-allowed':
        return FirebaseAuthCodeEnum.operationNotAllowed;
      case 'weak-password':
        return FirebaseAuthCodeEnum.weakPassword;
      case 'user-not-found':
        return FirebaseAuthCodeEnum.userNotFound;
      case 'account-exists-with-different-credential':
        return FirebaseAuthCodeEnum.accountExistsWithDifferentCredential;
      case 'invalid-credential':
        return FirebaseAuthCodeEnum.invalidCredential;
      case 'wrong-password':
        return FirebaseAuthCodeEnum.wrongPassword;
      case 'invalid-verification-code':
        return FirebaseAuthCodeEnum.invalidVerificationCode;
      case 'invalid-verification-id':
        return FirebaseAuthCodeEnum.invalidVerificationId;
      default:
        return FirebaseAuthCodeEnum.unknown;
    }
  }
}

abstract class StorageKeys {
  static const String userRefreshToken = 'user_refresh_token';
  static String userSelectedTheme = 'user_selected_theme';
}
