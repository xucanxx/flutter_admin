import 'package:json_annotation/json_annotation.dart';

part 'userInfo.g.dart';

@JsonSerializable()
class UserInfo {
  UserInfo();

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

  factory UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);
  Map<String, dynamic> toJson() => _$UserInfoToJson(this);
}
