import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ForumState> buildReducer() {
  return asReducer(
    <Object, Reducer<ForumState>>{
      ForumAction.action: _onAction,
    },
  );
}

ForumState _onAction(ForumState state, Action action) {
  final ForumState newState = state.clone();
  return newState;
}
