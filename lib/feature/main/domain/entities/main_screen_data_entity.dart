import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kind_owl/common/domain/entities/user_entity.dart';
part 'main_screen_data_entity.freezed.dart';
part 'main_screen_data_entity.g.dart';

@freezed
class MainScreenDataEntity with _$MainScreenDataEntity {
  factory MainScreenDataEntity({
    List<UserEntity?>? users,
  }) = _MainScreenDataEntity;

  factory MainScreenDataEntity.fromJson(Map<String, dynamic> json) =>
      _$MainScreenDataEntityFromJson(json);
}
