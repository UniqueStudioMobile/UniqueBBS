import 'package:unique_bbs/data/bean/group_entity.dart';
import 'package:unique_bbs/data/bean/group_info_entity.dart';
import 'package:unique_bbs/data/bean/user_info_entity.dart';

groupEntityFromJson(GroupEntity data, Map<String, dynamic> json) {
  data.group = json['group'] != null
      ? new GroupInfoEntity().fromJson(json['group'])
      : null;
  data.master = json['master'] != null
      ? new UserInfoEntity().fromJson(json['master'])
      : null;
  return data;
}

Map<String, dynamic> groupEntityToJson(GroupEntity entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.group != null) {
    data['group'] = entity.group.toJson();
  }
  if (entity.master != null) {
    data['master'] = entity.master.toJson();
  }
  return data;
}
