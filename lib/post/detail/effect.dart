import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<PostDetailState> buildEffect() {
  return combineEffects(<Object, Effect<PostDetailState>>{
    PostDetailAction.action: _onAction,
    Lifecycle.dispose: _onDispose,
  });
}

void _onAction(Action action, Context<PostDetailState> ctx) {
  print('effect');
}

void _onDispose(Action action, Context<PostDetailState> ctx) {
  print('onDispose');
  ctx.state.scrollController.dispose();
}