import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:unique_bbs/home/action.dart';

import 'state.dart';

Reducer<HomeState> buildReducer() {
  return asReducer(
    <Object, Reducer<HomeState>>{
      HomeAction.createTabController: _createTabController
    },
  );
}

HomeState _createTabController(HomeState state, Action action) {
  HomeState newState = state.clone();
  newState.homeTabController = TabController(length: 2, vsync: action.payload);
  return newState;
}
