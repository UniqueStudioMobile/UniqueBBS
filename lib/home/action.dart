import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart' hide Action;

enum HomeAction { createTabController, openSearch, openMessagePage }

class HomeActionCreator {
  static Action createTabController(TickerProvider ticker) =>
      Action(HomeAction.createTabController, payload: ticker);

  static Action openMessagePage() => Action(HomeAction.openMessagePage);

  static Action openSearch() => Action(HomeAction.openSearch);
}
