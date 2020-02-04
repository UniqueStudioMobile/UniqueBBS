import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:unique_bbs/config/route.dart';

class MainState implements Cloneable<MainState> {
  List<String> _paths;
  int currentIndex = 0;

  List<Widget> _pages;

  get currentPage {
    if (_pages == null) {
      _pages = [
        BBSRoute.buildPage(_paths[0], null),
        BBSRoute.buildPage(_paths[1], null),
      ];
    }
    return _pages[currentIndex];
  }

  @override
  MainState clone() {
    return MainState()
      .._paths = _paths
      ..currentIndex = currentIndex
      .._pages = _pages;
  }
}

MainState initState(Map<String, dynamic> args) {
  return MainState().._paths = [BBSRoute.home, BBSRoute.me];
}
