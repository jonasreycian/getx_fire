import 'package:flutter_test/flutter_test.dart';
import 'package:getx_fire/src/enums/enums.dart';
import 'package:getx_fire/src/exceptions/exceptions.dart';

void main() {
  test('SignUpWithEmailAndPasswordException', () async {
    var exception = SignUpWithEmailAndPasswordException.fromCode('email-already-in-use');
    expect(exception.message, 'Your email is already in use. Please sign in instead.');
    expect(exception.code, FirebaseAuthCodeEnum.emailAlreadyInUse);

    exception = SignUpWithEmailAndPasswordException.fromCode('invalid-email');
    expect(exception.message, 'Email is not valid or badly formatted.');
    expect(exception.code, FirebaseAuthCodeEnum.invalidEmail);

    exception = SignUpWithEmailAndPasswordException.fromCode('operation-not-allowed');
    expect(exception.message, 'This operation is not allowed. Please contact support for help.');
    expect(exception.code, FirebaseAuthCodeEnum.operationNotAllowed);

    exception = SignUpWithEmailAndPasswordException.fromCode('weak-password');
    expect(exception.message, 'Please enter a stronger password.');
    expect(exception.code, FirebaseAuthCodeEnum.weakPassword);

    exception = SignUpWithEmailAndPasswordException.fromCode('unknown');
    expect(exception.message, 'An unknown error occured.');
    expect(exception.code, FirebaseAuthCodeEnum.unknown);

    exception = SignUpWithEmailAndPasswordException();
    expect(exception.message, 'An unknown error occured.');
    expect(exception.code, FirebaseAuthCodeEnum.unknown);
  });
}
