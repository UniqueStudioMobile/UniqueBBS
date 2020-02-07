import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<PostMainState> buildReducer() {
  return asReducer(
    <Object, Reducer<PostMainState>>{
      PostMainAction.action: _onAction,
      PostMainAction.groupPopDown: _onGroupPopDown,
      PostMainAction.typePopDown: _onTypePopDown,
    },
  );
}

PostMainState _onAction(PostMainState state, Action action) {
  final PostMainState newState = state.clone();
  return newState;
}

PostMainState _onGroupPopDown(PostMainState state, Action action) {
  return state.clone()..groupSelected = action.payload;
}

PostMainState _onTypePopDown(PostMainState state, Action action) {
  return state.clone()..typeSelected = action.payload;
}