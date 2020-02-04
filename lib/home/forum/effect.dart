import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<ForumState> buildEffect() {
  return combineEffects(<Object, Effect<ForumState>>{
    ForumAction.action: _onAction,
  });
}

void _onAction(Action action, Context<ForumState> ctx) {}
