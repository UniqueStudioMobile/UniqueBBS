import 'package:unique_bbs/data/bean/message_info_entity.dart';
import 'package:unique_bbs/data/bean/user_info_entity.dart';
import 'package:unique_bbs/data/json/base/json_convert_content.dart';

class MessageEntity with JsonConvert<MessageEntity> {
  MessageInfoEntity message;
  UserInfoEntity fromUser;
}
