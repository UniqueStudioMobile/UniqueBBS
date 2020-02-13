import 'package:fish_redux/fish_redux.dart';
import 'package:unique_bbs/data/bean/forum_entity.dart';

class ItemState implements Cloneable<ItemState> {
  ForumEntity forum;

  @override
  ItemState clone() {
    return ItemState()..forum = forum;
  }
}

ItemState initState(Map<String, dynamic> args) {
  return ItemState();
}
