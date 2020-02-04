import 'package:unique_bbs/data/json/base/json_convert_content.dart';

class MessageInfoEntity with JsonConvert<MessageInfoEntity> {
  String createDate;
  String url;
  String id;
  bool isRead;
  String message;
}
