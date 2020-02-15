import 'package:fish_redux/fish_redux.dart';

import 'item/state.dart';

class ForumState extends MutableSource implements Cloneable<ForumState> {
  List<ItemState> items;

  @override
  ForumState clone() {
    return ForumState()..items = items;
  }

  @override
  Object getItemData(int index) => items[index];

  @override
  String getItemType(int index) => 'item';

  @override
  int get itemCount => items?.length ?? 0;

  @override
  void setItemData(int index, Object data) => items[index] = data;
}

ForumState initState(Map<String, dynamic> args) {
  return ForumState();
}
