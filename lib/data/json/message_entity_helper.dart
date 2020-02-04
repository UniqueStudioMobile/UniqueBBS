import 'package:unique_bbs/data/bean/message_entity.dart';
import 'package:unique_bbs/data/bean/message_info_entity.dart';
import 'package:unique_bbs/data/bean/user_info_entity.dart';

messageEntityFromJson(MessageEntity data, Map<String, dynamic> json) {
  data.message = json['message'] != null
      ? new MessageInfoEntity().fromJson(json['message'])
      : null;
  data.fromUser = json['fromUser'] != null
      ? new UserInfoEntity().fromJson(json['fromUser'])
      : null;
  return data;
}

Map<String, dynamic> messageEntityToJson(MessageEntity entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.message != null) {
    data['message'] = entity.message.toJson();
  }
  if (entity.fromUser != null) {
    data['fromUser'] = entity.fromUser.toJson();
  }
  return data;
}
