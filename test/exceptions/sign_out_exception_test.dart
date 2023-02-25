import 'package:flutter_test/flutter_test.dart';
import 'package:getx_fire/src/exceptions/exceptions.dart';

void main() {
  test('SignOutException', () {
    var exception = SignOutException();
    expect(exception, isA<SignOutException>());
  });
}
