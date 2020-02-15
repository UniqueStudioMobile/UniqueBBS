import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum PostDetailAction { action, invalidate }

class PostDetailActionCreator {
  static Action onAction() {
    return const Action(PostDetailAction.action);
  }

  static Action onInvalidate() {
    return const Action(PostDetailAction.invalidate);
  }
}
