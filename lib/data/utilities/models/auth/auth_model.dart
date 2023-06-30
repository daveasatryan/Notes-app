// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
class AuthUserModel with _$AuthUserModel {
  const factory AuthUserModel({
    required String email,
    required String password,
  }) = _AuthUserModel;

  factory AuthUserModel.fromJson(Map<String, Object?> json) =>
      _$AuthUserModelFromJson(json);
}
