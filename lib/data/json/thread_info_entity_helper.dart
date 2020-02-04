import 'package:unique_bbs/data/bean/thread_info_entity.dart';

threadInfoEntityFromJson(ThreadInfoEntity data, Map<String, dynamic> json) {
  data.postCount = json['postCount']?.toInt();
  data.subject = json['subject']?.toString();
  data.createDate = json['createDate']?.toString();
  data.closed = json['closed'];
  data.id = json['id']?.toString();
  data.lastDate = json['lastDate']?.toString();
  data.diamond = json['diamond'];
  data.top = json['top']?.toInt();
  data.active = json['active'];
  return data;
}

Map<String, dynamic> threadInfoEntityToJson(ThreadInfoEntity entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['postCount'] = entity.postCount;
  data['subject'] = entity.subject;
  data['createDate'] = entity.createDate;
  data['closed'] = entity.closed;
  data['id'] = entity.id;
  data['lastDate'] = entity.lastDate;
  data['diamond'] = entity.diamond;
  data['top'] = entity.top;
  data['active'] = entity.active;
  return data;
}
