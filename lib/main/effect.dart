import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<MainState> buildEffect() {
  return combineEffects(<Object, Effect<MainState>>{
//    MainAction.selectPage: _selectPage
  });
}

void _selectPage(Action action, Context<MainState> ctx) {
  ctx.dispatch(MainActionCreator.selectPage(action.payload));
}
