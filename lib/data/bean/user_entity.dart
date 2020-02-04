import 'package:unique_bbs/data/bean/user_info_entity.dart';
import 'package:unique_bbs/data/json/base/json_convert_content.dart';

import 'group_info_entity.dart';

class UserEntity with JsonConvert<UserEntity> {
  UserInfoEntity user;
  List<GroupInfoEntity> group;
}
