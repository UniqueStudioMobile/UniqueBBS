import 'package:fish_redux/fish_redux.dart';

enum MainAction { createTabController, selectPage }

class MainActionCreator {
  static Action selectPage(int index) {
    return Action(MainAction.selectPage, payload: index);
  }
}
