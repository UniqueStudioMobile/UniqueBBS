import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:unique_bbs/home/forum/state.dart' hide initState;
import 'package:unique_bbs/home/info/state.dart' hide initState;

class HomeState implements Cloneable<HomeState> {
  TabController homeTabController;
  ForumState forumState;

  HomeState({this.homeTabController, this.forumState});

  @override
  HomeState clone() {
    return HomeState(
        homeTabController: homeTabController, forumState: forumState);
  }

  static HomeState initState(Map<String, dynamic> args) {
    return HomeState()..forumState = ForumState();
  }
}

class InfoConn extends ConnOp<HomeState, InfoState> {
  @override
  InfoState get(HomeState state) {
    return InfoState();
  }
}

class ForumConn extends ConnOp<HomeState, ForumState> {
  @override
  ForumState get(HomeState state) => state.forumState;

  @override
  void set(HomeState state, ForumState subState) {
    state.forumState = subState;
  }
}

class HomeTickerState extends ComponentState<HomeState>
    with SingleTickerProviderStateMixin {}

