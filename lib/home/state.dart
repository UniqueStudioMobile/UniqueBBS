import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

class HomeState implements Cloneable<HomeState> {
  TabController homeTabController;

  @override
  HomeState clone() {
    return HomeState()..homeTabController = homeTabController;
  }

  static HomeState initState(Map<String, dynamic> args) {
    return HomeState();
  }
}
