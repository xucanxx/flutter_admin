import 'package:json_annotation/json_annotation.dart';

part 'person.g.dart';

@JsonSerializable()
class Person {
  Person();

  late bool selected;
  late String id;
  late String userId;
  late String nickName;
  late String avatarUrl;
  late String gender;
  late String country;
  late String province;
  late String city;
  late String name;
  late String school;
  late String major;
  late String birthday;
  late String entrance;
  late String hometown;
  late String memo;
  late String deptId;
  late String createTime;
  late String updateTime;

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
  Map<String, dynamic> toJson() => _$PersonToJson(this);
}
