import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ForumAction { action }

class ForumActionCreator {
  static Action onAction() {
    return const Action(ForumAction.action);
  }
}
