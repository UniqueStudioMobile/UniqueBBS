import 'package:fish_redux/fish_redux.dart';
import 'package:unique_bbs/home/forum/item/state.dart';

import 'action.dart';
import 'state.dart';

Reducer<ForumState> buildReducer() {
  return asReducer(
    <Object, Reducer<ForumState>>{
      ForumAction.initForums: _initForums,
    },
  );
}

ForumState _initForums(ForumState state, Action action) {
  final List<ItemState> items = action.payload ?? <ItemState>[];
  final ForumState newState = state.clone();
  newState.items = items;
  return newState;
}
