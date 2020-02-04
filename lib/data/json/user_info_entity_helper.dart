import 'package:unique_bbs/data/bean/user_info_entity.dart';

userInfoEntityFromJson(UserInfoEntity data, Map<String, dynamic> json) {
  data.joinTime = json['joinTime']?.toInt();
  data.lastLogin = json['lastLogin']?.toString();
  data.qq = json['qq']?.toString();
  data.isAdmin = json['isAdmin'];
  data.avatar = json['avatar']?.toString();
  data.email = json['email']?.toString();
  data.username = json['username']?.toString();
  data.spaceQuota = json['spaceQuota']?.toInt();
  data.dormitory = json['dormitory']?.toString();
  data.signature = json['signature']?.toString();
  data.id = json['id']?.toString();
  data.className = json['className']?.toString();
  data.wechat = json['wechat']?.toString();
  data.mobile = json['mobile']?.toString();
  data.threads = json['threads']?.toInt();
  data.major = json['major']?.toString();
  data.studentID = json['studentID']?.toString();
  data.active = json['active'];
  return data;
}

Map<String, dynamic> userInfoEntityToJson(UserInfoEntity entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['joinTime'] = entity.joinTime;
  data['lastLogin'] = entity.lastLogin;
  data['qq'] = entity.qq;
  data['isAdmin'] = entity.isAdmin;
  data['avatar'] = entity.avatar;
  data['email'] = entity.email;
  data['username'] = entity.username;
  data['spaceQuota'] = entity.spaceQuota;
  data['dormitory'] = entity.dormitory;
  data['signature'] = entity.signature;
  data['id'] = entity.id;
  data['className'] = entity.className;
  data['wechat'] = entity.wechat;
  data['mobile'] = entity.mobile;
  data['threads'] = entity.threads;
  data['major'] = entity.major;
  data['studentID'] = entity.studentID;
  data['active'] = entity.active;
  return data;
}
