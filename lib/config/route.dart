import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/widgets.dart';
import 'package:unique_bbs/home/page.dart';
import 'package:unique_bbs/main/page.dart';

class BBSRoute {
  static final main = '/'; // 主页

  static final home = 'home'; // 首页
  static final information = 'information'; // 首页-情报
  static final forum = 'forum'; // 首页-论坛
  static final search = 'search'; // 首页-搜索

  static final login = 'login'; // 登录

  static final postList = 'postList'; // 帖子列表：首页-情报-通知公告、首页-我的-我的帖子
  static final postDetail = 'postDetail'; // 帖子详情
  static final posting = 'postReport'; // 发帖

  static final me = 'me'; // 我的
  static final userDetail = 'userDetail'; // 用户信息
  static final pwUpdate = 'pwUpdate'; // 修改密码

  static final message = 'message'; // 消息页面

  // TODO：页面完成在这里添加路由
  static var routes = PageRoutes(pages: {main: MainPage(), home: HomePage()});

  static Widget buildPage(String path, dynamic arg) =>
      routes.buildPage(path, arg);
}
