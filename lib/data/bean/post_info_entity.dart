import 'package:unique_bbs/data/json/base/json_convert_content.dart';

class PostInfoEntity with JsonConvert<PostInfoEntity> {
  String id;
  String message;
  String createDate;
  bool isFirst;
  String quote;
  String subject;
  int postCount;
  String threadCreateDate;
  bool active;
}
