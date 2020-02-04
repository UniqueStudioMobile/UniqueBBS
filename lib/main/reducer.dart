import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<MainState> buildReducer() {
  return asReducer(
    <Object, Reducer<MainState>>{MainAction.selectPage: _selectPage},
  );
}

MainState _selectPage(MainState state, Action action) {
  var newState = state.clone();
  newState.currentIndex = action.payload;
  return newState;
}
