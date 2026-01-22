import 'package:json_annotation/json_annotation.dart';
part 'responeBodyApi.g.dart';

@JsonSerializable()
class ResponeBodyApi<T> {
  ResponeBodyApi();

  late bool success;
  late String code;
  late String message;
  late T data;

  factory ResponeBodyApi.fromJson(Map<String, dynamic> json) =>
      _$ResponeBodyApiFromJson(json) as ResponeBodyApi<T>;
  Map<String, dynamic> toJson() => _$ResponeBodyApiToJson(this);
}
