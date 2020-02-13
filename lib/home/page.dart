import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:unique_bbs/config/route.dart';
import 'package:unique_bbs/home/forum/component.dart';
import 'package:unique_bbs/home/forum/state.dart' hide initState;
import 'package:unique_bbs/home/info/component.dart';
import 'package:unique_bbs/home/info/state.dart' hide initState;

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class HomePage extends Page<HomeState, Map<String, dynamic>> {
  HomePage()
      : super(
          initState: HomeState.initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<HomeState>(
              adapter: null,
              slots: <String, Dependent<HomeState>>{
                BBSRoute.information: InfoConn() + InfoComponent(),
                BBSRoute.forum: ForumConn() + ForumComponent()
              }),
        );

  @override
  ComponentState<HomeState> createState() => HomeTickerState();
}

class InfoConn extends ConnOp<HomeState, InfoState> {
  @override
  InfoState get(HomeState state) {
    return InfoState();
  }
}

class ForumConn extends ConnOp<HomeState, ForumState> {
  @override
  ForumState get(HomeState state) => ForumState();

  @override
  void set(HomeState state, ForumState subState) {}
}

class HomeTickerState extends ComponentState<HomeState>
    with SingleTickerProviderStateMixin {}
