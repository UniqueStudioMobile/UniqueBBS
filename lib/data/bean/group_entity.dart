import 'package:unique_bbs/data/bean/group_info_entity.dart';
import 'package:unique_bbs/data/bean/user_info_entity.dart';
import 'package:unique_bbs/data/json/base/json_convert_content.dart';

class GroupEntity with JsonConvert<GroupEntity> {
  GroupInfoEntity group;
  UserInfoEntity master;
}
