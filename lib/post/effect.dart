import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<PostMainState> buildEffect() {
  return combineEffects(<Object, Effect<PostMainState>>{
    PostMainAction.action: _onAction,
  });
}

void _onAction(Action action, Context<PostMainState> ctx) {
}
