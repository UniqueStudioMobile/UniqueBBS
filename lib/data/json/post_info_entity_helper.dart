import 'package:unique_bbs/data/bean/post_info_entity.dart';

postInfoEntityFromJson(PostInfoEntity data, Map<String, dynamic> json) {
  data.id = json['id']?.toString();
  data.message = json['message']?.toString();
  data.createDate = json['createDate']?.toString();
  data.isFirst = json['isFirst'];
  data.quote = json['quote']?.toString();
  data.subject = json['subject']?.toString();
  data.postCount = json['postCount']?.toInt();
  data.threadCreateDate = json['threadCreateDate']?.toString();
  data.active = json['active'];
  return data;
}

Map<String, dynamic> postInfoEntityToJson(PostInfoEntity entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['id'] = entity.id;
  data['message'] = entity.message;
  data['createDate'] = entity.createDate;
  data['isFirst'] = entity.isFirst;
  data['quote'] = entity.quote;
  data['subject'] = entity.subject;
  data['postCount'] = entity.postCount;
  data['threadCreateDate'] = entity.threadCreateDate;
  data['active'] = entity.active;
  return data;
}
