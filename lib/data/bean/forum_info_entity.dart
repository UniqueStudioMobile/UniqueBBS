import 'package:unique_bbs/data/json/base/json_convert_content.dart';

class ForumInfoEntity with JsonConvert<ForumInfoEntity> {
  String id;
  String name;
  int threads;
  String icon;
  String description;
}
