import 'package:unique_bbs/data/bean/forum_entity.dart';
import 'package:unique_bbs/data/bean/forum_info_entity.dart';
import 'package:unique_bbs/data/bean/post_entity.dart';

forumEntityFromJson(ForumEntity data, Map<String, dynamic> json) {
  data.forum = json['forum'] != null
      ? new ForumInfoEntity().fromJson(json['forum'])
      : null;
  data.lastPost = json['lastPost'] != null
      ? new PostEntity().fromJson(json['lastPost'])
      : null;
  return data;
}

Map<String, dynamic> forumEntityToJson(ForumEntity entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.forum != null) {
    data['forum'] = entity.forum.toJson();
  }
  if (entity.lastPost != null) {
    data['lastPost'] = entity.lastPost.toJson();
  }
  return data;
}
