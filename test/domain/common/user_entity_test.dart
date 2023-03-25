import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kind_owl/common/domain/entities/user_entity.dart';
import 'fake_user_dto.dart';

mixin FakeDtoFields {
  final fUid = "EWvAD5BEZkbh7nk2ixkrETxZ9bC3";
  final fDisplayName = null;
  final fEmail = "useful_765@gmail.com";
  final fPhotoUrl =
      "https://www.snta.ru/upload/iblock/3a6/3a685f2c2e0a2615fa42ca23a1e5194e.jpeg";
}

void main() {
  final fakeFirebaseUser = FakeUserDto();

  test('User.fromUserDto if Dto.name is undefined (null)', () {
    /// arrange
    final testUser = UserEntity.fromUserDto(fakeFirebaseUser);

    ///act
    final name = testUser.name;
    final email = fakeFirebaseUser.email!;

    ///assert
    expect(name, email.split('@')[0]);
    debugPrint('$email\n$name');
  });
}
