import 'package:fish_redux/fish_redux.dart';
import 'package:unique_bbs/home/forum/item/state.dart';

import 'action.dart';
import 'state.dart';

Effect<ForumState> buildEffect() {
  return combineEffects(<Object, Effect<ForumState>>{
    Lifecycle.initState: _init,
  });
}

void _init(Action action, Context<ForumState> ctx) {
  final List<ItemState> forums = <ItemState>[
    ItemState(),
    ItemState(),
    ItemState(),
    ItemState(),
  ];
  ctx.dispatch(ForumActionCreator.initForumsAction(forums));
}
