import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart' hide Action;
import 'package:unique_bbs/config/route.dart';
import 'package:unique_bbs/widget/BoardDialog.dart';

import 'action.dart';
import 'state.dart';

Effect<MainState> buildEffect() {
  return combineEffects(<Object, Effect<MainState>>{
    MainAction.newPost: _newPage,
    MainAction.selectBoard: _selectBoard,
//    MainAction.selectPage: _selectPage
  });
}

void _newPage(Action action, Context<MainState> ctx) {
  Navigator.pushNamed(ctx.context, BBSRoute.posting);
}

void _selectBoard(Action action, Context<MainState> ctx) {
  Navigator.of(ctx.context).push(BoardDialog());
}

void _selectPage(Action action, Context<MainState> ctx) {
  ctx.dispatch(MainActionCreator.selectPage(action.payload));
}
