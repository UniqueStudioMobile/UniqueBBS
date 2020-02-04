import 'package:unique_bbs/data/bean/forum_info_entity.dart';

forumInfoEntityFromJson(ForumInfoEntity data, Map<String, dynamic> json) {
  data.id = json['id']?.toString();
  data.name = json['name']?.toString();
  data.threads = json['threads']?.toInt();
  data.icon = json['icon']?.toString();
  data.description = json['description']?.toString();
  return data;
}

Map<String, dynamic> forumInfoEntityToJson(ForumInfoEntity entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['threads'] = entity.threads;
  data['icon'] = entity.icon;
  data['description'] = entity.description;
  return data;
}
