import 'package:json_annotation/json_annotation.dart';

import '../vo/treeVO.dart';

part 'menu.g.dart';

@JsonSerializable()
class Menu extends TreeData {
  Menu({required String id, required String pid, this.name, this.pname, this.url})
      : super(id, pid);

  String? name;
  late String nameEn;
  String? pname;
  late String icon;
  String? url;
  late num orderBy;
  late String module;
  late String remark;
  late String createTime;
  late String updateTime;

  factory Menu.fromJson(Map<String, dynamic> json) => _$MenuFromJson(json);
  Map<String, dynamic> toJson() => _$MenuToJson(this);
}
