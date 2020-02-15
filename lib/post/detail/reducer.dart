import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<PostDetailState> buildReducer() {
  return asReducer(
    <Object, Reducer<PostDetailState>>{
      PostDetailAction.invalidate: _invalidate,
    },
  );
}

PostDetailState _invalidate(PostDetailState state, Action action) {
  final PostDetailState newState = state.clone();
  return newState;
}