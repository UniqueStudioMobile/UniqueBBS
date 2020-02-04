import 'package:unique_bbs/data/json/base/json_convert_content.dart';

class UserInfoEntity with JsonConvert<UserInfoEntity> {
  int joinTime;
  String lastLogin;
  String qq;
  bool isAdmin;
  String avatar;
  String email;
  String username;
  int spaceQuota;
  String dormitory;
  String signature;
  String id;
  String className;
  String wechat;
  String mobile;
  int threads;
  String major;
  String studentID;
  bool active;
}
