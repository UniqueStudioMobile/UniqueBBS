import 'package:unique_bbs/data/bean/post_info_entity.dart';
import 'package:unique_bbs/data/bean/thread_info_entity.dart';
import 'package:unique_bbs/data/bean/user_info_entity.dart';
import 'package:unique_bbs/data/json/base/json_convert_content.dart';

class PostEntity with JsonConvert<PostEntity> {
  PostInfoEntity post;
  UserInfoEntity user;
  ThreadInfoEntity thread;
}
