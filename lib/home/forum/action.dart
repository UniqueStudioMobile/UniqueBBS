import 'package:fish_redux/fish_redux.dart';

import 'item/state.dart';

enum ForumAction { initForums }

class ForumActionCreator {
  static Action initForumsAction(List<ItemState> forums) {
    return Action(ForumAction.initForums, payload: forums);
  }
}
