import 'package:unique_bbs/data/bean/group_info_entity.dart';

groupInfoEntityFromJson(GroupInfoEntity data, Map<String, dynamic> json) {
  data.id = json['id']?.toString();
  data.key = json['key']?.toInt();
  data.name = json['name']?.toString();
  data.color = json['color']?.toString();
  data.count = json['count']?.toInt();
  return data;
}

Map<String, dynamic> groupInfoEntityToJson(GroupInfoEntity entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['id'] = entity.id;
  data['key'] = entity.key;
  data['name'] = entity.name;
  data['color'] = entity.color;
  data['count'] = entity.count;
  return data;
}
