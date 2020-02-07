import 'package:fish_redux/fish_redux.dart';

enum MainAction { createTabController, selectPage, newPost }

class MainActionCreator {
  static Action selectPage(int index) {
    return Action(MainAction.selectPage, payload: index);
  }

  static Action newPost() {
    return Action(MainAction.newPost);
  }
}
