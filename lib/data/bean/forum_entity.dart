import 'package:unique_bbs/data/bean/forum_info_entity.dart';
import 'package:unique_bbs/data/bean/post_entity.dart';
import 'package:unique_bbs/data/json/base/json_convert_content.dart';

class ForumEntity with JsonConvert<ForumEntity> {
  ForumInfoEntity forum;
  PostEntity lastPost;

  static final field2Type = {
    'forum': ForumInfoEntity,
    'lastPost': PostEntity
  };
}
