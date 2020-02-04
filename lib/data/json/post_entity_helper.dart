import 'package:unique_bbs/data/bean/post_entity.dart';
import 'package:unique_bbs/data/bean/post_info_entity.dart';
import 'package:unique_bbs/data/bean/thread_info_entity.dart';
import 'package:unique_bbs/data/bean/user_info_entity.dart';

postEntityFromJson(PostEntity data, Map<String, dynamic> json) {
  data.post =
      json['post'] != null ? new PostInfoEntity().fromJson(json['post']) : null;
  data.user =
      json['user'] != null ? new UserInfoEntity().fromJson(json['user']) : null;
  data.thread = json['thread'] != null
      ? new ThreadInfoEntity().fromJson(json['thread'])
      : null;
  return data;
}

Map<String, dynamic> postEntityToJson(PostEntity entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.post != null) {
    data['post'] = entity.post.toJson();
  }
  if (entity.user != null) {
    data['user'] = entity.user.toJson();
  }
  if (entity.thread != null) {
    data['thread'] = entity.thread.toJson();
  }
  return data;
}
