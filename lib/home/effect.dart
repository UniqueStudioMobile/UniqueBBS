import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/widgets.dart' hide Action;
import 'package:unique_bbs/config/route.dart';
import 'package:unique_bbs/home/page.dart';

import 'action.dart';
import 'state.dart';

Effect<HomeState> buildEffect() {
  return combineEffects(<Object, Effect<HomeState>>{
    Lifecycle.initState: _onInit,
    HomeAction.openMessagePage: _openMessagePage,
    HomeAction.openSearch: _openSearch
  });
}

void _onInit(Action action, Context<HomeState> ctx) {
  ctx.dispatch(
      HomeActionCreator.createTabController(ctx.stfState as HomeTickerState));
}

void _openMessagePage(Action action, Context<HomeState> ctx) {
  Navigator.pushNamed(ctx.context, BBSRoute.message);
}

void _openSearch(Action action, Context<HomeState> ctx) {
  Navigator.pushNamed(ctx.context, BBSRoute.postDetail, arguments: { "data": "I am data" });
}
