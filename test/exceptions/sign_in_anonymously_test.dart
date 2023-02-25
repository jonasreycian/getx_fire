/// Make a unit test for [SignInAnonymouslyException] class
/// Test only the message property when the exception is thrown
import 'package:flutter_test/flutter_test.dart';
import 'package:getx_fire/src/enums/src/firebase_auth_code.dart';
import 'package:getx_fire/src/exceptions/exceptions.dart';

void main() {
  test('SignInAnonymouslyException', () async {
    var exception = SignInAnonymouslyException.fromCode('operation-not-allowed');
    expect(exception.message, 'Operation not allowed. Please contact support for help.');
    expect(exception.code, FirebaseAuthCodeEnum.operationNotAllowed);

    exception = SignInAnonymouslyException.fromCode('invalid-email');
    expect(exception.message, 'An unknown error occured.');
    expect(exception.code, FirebaseAuthCodeEnum.invalidEmail);

    exception = SignInAnonymouslyException.fromCode('unknown');
    expect(exception.message, 'An unknown error occured.');
    expect(exception.code, FirebaseAuthCodeEnum.unknown);

    exception = SignInAnonymouslyException();
    expect(exception.message, 'An unknown error occured.');
    expect(exception.code, FirebaseAuthCodeEnum.unknown);
  });
}
