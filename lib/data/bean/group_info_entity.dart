import 'package:unique_bbs/data/json/base/json_convert_content.dart';

class GroupInfoEntity with JsonConvert<GroupInfoEntity> {
  String id;
  int key;
  String name;
  String color;
  int count; // TODO
}
