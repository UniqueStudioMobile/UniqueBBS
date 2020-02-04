import 'package:unique_bbs/data/bean/attach_entity.dart';
import 'package:unique_bbs/data/bean/forum_info_entity.dart';
import 'package:unique_bbs/data/bean/post_entity.dart';
import 'package:unique_bbs/data/bean/post_info_entity.dart';
import 'package:unique_bbs/data/bean/thread_entity.dart';
import 'package:unique_bbs/data/bean/thread_info_entity.dart';
import 'package:unique_bbs/data/bean/user_info_entity.dart';

threadEntityFromJson(ThreadEntity data, Map<String, dynamic> json) {
  data.thread = json['thread'] != null
      ? new ThreadInfoEntity().fromJson(json['thread'])
      : null;
  data.user =
      json['user'] != null ? new UserInfoEntity().fromJson(json['user']) : null;
  if (json['lastReply'] != null) {
    data.lastReply = new List<PostInfoEntity>();
    (json['lastReply'] as List).forEach((v) {
      data.lastReply.add(new PostInfoEntity().fromJson(v));
    });
  }
  data.firstPost = json['firstPost'] != null
      ? new PostInfoEntity().fromJson(json['firstPost'])
      : null;
  if (json['postArr'] != null) {
    data.postArr = new List<PostEntity>();
    (json['postArr'] as List).forEach((v) {
      data.postArr.add(new PostEntity().fromJson(v));
    });
  }
  if (json['attachArr'] != null) {
    data.attachArr = new List<AttachEntity>();
    (json['attachArr'] as List).forEach((v) {
      data.attachArr.add(new AttachEntity().fromJson(v));
    });
  }
  data.forumInfo = json['forumInfo'] != null
      ? new ForumInfoEntity().fromJson(json['forumInfo'])
      : null;
  return data;
}

Map<String, dynamic> threadEntityToJson(ThreadEntity entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.thread != null) {
    data['thread'] = entity.thread.toJson();
  }
  if (entity.user != null) {
    data['user'] = entity.user.toJson();
  }
  if (entity.lastReply != null) {
    data['lastReply'] = entity.lastReply.map((v) => v.toJson()).toList();
  }
  if (entity.firstPost != null) {
    data['firstPost'] = entity.firstPost.toJson();
  }
  if (entity.postArr != null) {
    data['postArr'] = entity.postArr.map((v) => v.toJson()).toList();
  }
  if (entity.attachArr != null) {
    data['attachArr'] = entity.attachArr.map((v) => v.toJson()).toList();
  }
  if (entity.forumInfo != null) {
    data['forumInfo'] = entity.forumInfo.toJson();
  }
  return data;
}
