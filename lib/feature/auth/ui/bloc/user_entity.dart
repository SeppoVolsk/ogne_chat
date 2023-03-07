import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
@Injectable()
@prod
class UserEntity with _$UserEntity {
  factory UserEntity({String? uid, String? name, String? photo}) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}
