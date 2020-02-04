import 'package:unique_bbs/data/bean/attach_entity.dart';
import 'package:unique_bbs/data/bean/forum_info_entity.dart';
import 'package:unique_bbs/data/bean/post_entity.dart';
import 'package:unique_bbs/data/bean/post_info_entity.dart';
import 'package:unique_bbs/data/bean/thread_info_entity.dart';
import 'package:unique_bbs/data/bean/user_info_entity.dart';
import 'package:unique_bbs/data/json/base/json_convert_content.dart';

class ThreadEntity with JsonConvert<ThreadEntity> {
  ThreadInfoEntity thread;
  UserInfoEntity user;
  List<PostInfoEntity> lastReply;
  PostInfoEntity firstPost;
  List<PostEntity> postArr;
  List<AttachEntity> attachArr;
  ForumInfoEntity forumInfo;
}
