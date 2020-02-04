import 'package:unique_bbs/data/bean/group_info_entity.dart';
import 'package:unique_bbs/data/bean/user_entity.dart';
import 'package:unique_bbs/data/bean/user_info_entity.dart';

userEntityFromJson(UserEntity data, Map<String, dynamic> json) {
  data.user =
      json['user'] != null ? new UserInfoEntity().fromJson(json['user']) : null;
  if (json['group'] != null) {
    data.group = new List<GroupInfoEntity>();
    (json['group'] as List).forEach((v) {
      data.group.add(new GroupInfoEntity().fromJson(v));
    });
  }
  return data;
}

Map<String, dynamic> userEntityToJson(UserEntity entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.user != null) {
    data['user'] = entity.user.toJson();
  }
  if (entity.group != null) {
    data['group'] = entity.group.map((v) => v.toJson()).toList();
  }
  return data;
}
