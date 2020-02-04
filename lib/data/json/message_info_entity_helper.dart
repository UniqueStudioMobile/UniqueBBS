import 'package:unique_bbs/data/bean/message_info_entity.dart';

messageInfoEntityFromJson(MessageInfoEntity data, Map<String, dynamic> json) {
  data.createDate = json['createDate']?.toString();
  data.url = json['url']?.toString();
  data.id = json['id']?.toString();
  data.isRead = json['isRead'];
  data.message = json['message']?.toString();
  return data;
}

Map<String, dynamic> messageInfoEntityToJson(MessageInfoEntity entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['createDate'] = entity.createDate;
  data['url'] = entity.url;
  data['id'] = entity.id;
  data['isRead'] = entity.isRead;
  data['message'] = entity.message;
  return data;
}
