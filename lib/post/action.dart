import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum PostMainAction { action, groupPopDown, typePopDown }

class PostMainActionCreator {
  static Action onAction() {
    return const Action(PostMainAction.action);
  }

  static Action onGroupPopDown(String value) {
    return Action(PostMainAction.groupPopDown, payload: value);
  }

  static Action onTypePopDown(String value) {
    return Action(PostMainAction.typePopDown, payload: value);
  }
}
