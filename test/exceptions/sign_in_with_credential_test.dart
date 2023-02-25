import 'package:flutter_test/flutter_test.dart';
import 'package:getx_fire/src/enums/enums.dart';
import 'package:getx_fire/src/exceptions/exceptions.dart';

void main() {
  test('SignInWithCredentialException', () {
    var exception = SignInWithCredentialException();
    expect(exception.message, 'An unknown error occured.');
    expect(exception.code, FirebaseAuthCodeEnum.unknown);

    exception = SignInWithCredentialException.fromCode('account-exists-with-different-credential');
    expect(exception.message, 'Account already exists with a different credential.');
    expect(exception.code, FirebaseAuthCodeEnum.accountExistsWithDifferentCredential);

    exception = SignInWithCredentialException.fromCode('invalid-credential');
    expect(exception.message, 'The credential received is malformed or has expired.');
    expect(exception.code, FirebaseAuthCodeEnum.invalidCredential);

    exception = SignInWithCredentialException.fromCode('operation-not-allowed');
    expect(exception.message, 'Operation not allowed. Please contact support for help.');
    expect(exception.code, FirebaseAuthCodeEnum.operationNotAllowed);

    exception = SignInWithCredentialException.fromCode('user-disabled');
    expect(exception.message, 'Your account has been disabled. Please contact support for help.');
    expect(exception.code, FirebaseAuthCodeEnum.userDisabled);

    exception = SignInWithCredentialException.fromCode('user-not-found');
    expect(exception.message, 'User with this email does not exist.');
    expect(exception.code, FirebaseAuthCodeEnum.userNotFound);

    exception = SignInWithCredentialException.fromCode('wrong-password');
    expect(exception.message, 'Incorrect password; please try again.');
    expect(exception.code, FirebaseAuthCodeEnum.wrongPassword);

    exception = SignInWithCredentialException.fromCode('invalid-verification-code');
    expect(exception.message, 'The verification code received is invalid. Please try again.');
    expect(exception.code, FirebaseAuthCodeEnum.invalidVerificationCode);

    exception = SignInWithCredentialException.fromCode('invalid-verification-id');
    expect(exception.message, 'The verification ID received is invalid. Please try again.');
    expect(exception.code, FirebaseAuthCodeEnum.invalidVerificationId);
  });
}
