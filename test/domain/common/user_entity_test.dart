import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_platform_interface/src/auth_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kind_owl/common/domain/entities/user_entity.dart';
import 'package:kind_owl/firebase_options.dart';

class FakeFields {
  static const uidFake = "EWvAD5BEZkbh7nk2ixkrETxZ9bC3";
  static const displayNameFake = null;
  static const emailFake = "useful_765@gmail.com";
  static const photoUrlFake =
      "https://www.snta.ru/upload/iblock/3a6/3a685f2c2e0a2615fa42ca23a1e5194e.jpeg";
}

void main() {
  final fakeFirebaseUser = FakeUser();

  test('fromUserDto', () {
    /// arrange
    final testUser = UserEntity.fromUserDto(fakeFirebaseUser);

    ///act

    ///assert
    expect(testUser.name, FakeFields.emailFake.split('@')[0]);
  });
}

class FakeUser with FakeFields implements User {
  @override
  Future<void> delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  // TODO: implement displayName
  String? get displayName => FakeFields.displayNameFake;

  @override
  // TODO: implement email
  String? get email => FakeFields.emailFake;

  @override
  // TODO: implement emailVerified
  bool get emailVerified => throw UnimplementedError();

  @override
  Future<String> getIdToken([bool forceRefresh = false]) {
    // TODO: implement getIdToken
    throw UnimplementedError();
  }

  @override
  Future<IdTokenResult> getIdTokenResult([bool forceRefresh = false]) {
    // TODO: implement getIdTokenResult
    throw UnimplementedError();
  }

  @override
  // TODO: implement isAnonymous
  bool get isAnonymous => throw UnimplementedError();

  @override
  Future<UserCredential> linkWithCredential(AuthCredential credential) {
    // TODO: implement linkWithCredential
    throw UnimplementedError();
  }

  @override
  Future<ConfirmationResult> linkWithPhoneNumber(String phoneNumber,
      [RecaptchaVerifier? verifier]) {
    // TODO: implement linkWithPhoneNumber
    throw UnimplementedError();
  }

  @override
  Future<UserCredential> linkWithPopup(AuthProvider provider) {
    // TODO: implement linkWithPopup
    throw UnimplementedError();
  }

  @override
  Future<UserCredential> linkWithProvider(AuthProvider provider) {
    // TODO: implement linkWithProvider
    throw UnimplementedError();
  }

  @override
  Future<void> linkWithRedirect(AuthProvider provider) {
    // TODO: implement linkWithRedirect
    throw UnimplementedError();
  }

  @override
  // TODO: implement metadata
  UserMetadata get metadata => throw UnimplementedError();

  @override
  // TODO: implement multiFactor
  MultiFactor get multiFactor => throw UnimplementedError();

  @override
  // TODO: implement phoneNumber
  String? get phoneNumber => throw UnimplementedError();

  @override
  // TODO: implement photoURL
  String? get photoURL => FakeFields.photoUrlFake;

  @override
  // TODO: implement providerData
  List<UserInfo> get providerData => throw UnimplementedError();

  @override
  Future<UserCredential> reauthenticateWithCredential(
      AuthCredential credential) {
    // TODO: implement reauthenticateWithCredential
    throw UnimplementedError();
  }

  @override
  Future<UserCredential> reauthenticateWithPopup(AuthProvider provider) {
    // TODO: implement reauthenticateWithPopup
    throw UnimplementedError();
  }

  @override
  Future<UserCredential> reauthenticateWithProvider(AuthProvider provider) {
    // TODO: implement reauthenticateWithProvider
    throw UnimplementedError();
  }

  @override
  Future<void> reauthenticateWithRedirect(AuthProvider provider) {
    // TODO: implement reauthenticateWithRedirect
    throw UnimplementedError();
  }

  @override
  // TODO: implement refreshToken
  String? get refreshToken => throw UnimplementedError();

  @override
  Future<void> reload() {
    // TODO: implement reload
    throw UnimplementedError();
  }

  @override
  Future<void> sendEmailVerification([ActionCodeSettings? actionCodeSettings]) {
    // TODO: implement sendEmailVerification
    throw UnimplementedError();
  }

  @override
  // TODO: implement tenantId
  String? get tenantId => throw UnimplementedError();

  @override
  // TODO: implement uid
  String get uid => FakeFields.uidFake;

  @override
  Future<User> unlink(String providerId) {
    // TODO: implement unlink
    throw UnimplementedError();
  }

  @override
  Future<void> updateDisplayName(String? displayName) {
    // TODO: implement updateDisplayName
    throw UnimplementedError();
  }

  @override
  Future<void> updateEmail(String newEmail) {
    // TODO: implement updateEmail
    throw UnimplementedError();
  }

  @override
  Future<void> updatePassword(String newPassword) {
    // TODO: implement updatePassword
    throw UnimplementedError();
  }

  @override
  Future<void> updatePhoneNumber(PhoneAuthCredential phoneCredential) {
    // TODO: implement updatePhoneNumber
    throw UnimplementedError();
  }

  @override
  Future<void> updatePhotoURL(String? photoURL) {
    // TODO: implement updatePhotoURL
    throw UnimplementedError();
  }

  @override
  Future<void> updateProfile({String? displayName, String? photoURL}) {
    // TODO: implement updateProfile
    throw UnimplementedError();
  }

  @override
  Future<void> verifyBeforeUpdateEmail(String newEmail,
      [ActionCodeSettings? actionCodeSettings]) {
    // TODO: implement verifyBeforeUpdateEmail
    throw UnimplementedError();
  }
}
