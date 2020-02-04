import 'package:unique_bbs/data/json/base/json_convert_content.dart';

class ThreadInfoEntity with JsonConvert<ThreadInfoEntity> {
  int postCount;
  String subject;
  String createDate;
  bool closed;
  String id;
  String lastDate;
  bool diamond;
  int top;
  bool active;
}
