import 'package:flutter_test/flutter_test.dart';
import 'package:getx_fire/src/enums/enums.dart';
import 'package:getx_fire/src/exceptions/exceptions.dart';

void main() {
  test('SignInWithEmailAndPasswordException', () {
    var exception = SignInWithEmailAndPasswordException();
    expect(exception.message, 'An unknown error occured, please try again.');
    expect(exception.code, FirebaseAuthCodeEnum.unknown);

    exception = SignInWithEmailAndPasswordException.fromCode('invalid-email');
    expect(exception.message, 'Email is not valid or badly formatted.');
    expect(exception.code, FirebaseAuthCodeEnum.invalidEmail);

    exception = SignInWithEmailAndPasswordException.fromCode('user-disabled');
    expect(exception.message, 'Your account has been disabled. Please contact support for help.');
    expect(exception.code, FirebaseAuthCodeEnum.userDisabled);

    exception = SignInWithEmailAndPasswordException.fromCode('user-not-found');
    expect(exception.message, 'Email not found, please try again.');
    expect(exception.code, FirebaseAuthCodeEnum.userNotFound);

    exception = SignInWithEmailAndPasswordException.fromCode('wrong-password');
    expect(exception.message, 'Incorrect password, please try again.');
    expect(exception.code, FirebaseAuthCodeEnum.wrongPassword);
  });
}
