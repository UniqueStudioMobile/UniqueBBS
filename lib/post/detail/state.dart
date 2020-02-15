import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

class PostDetailState implements Cloneable<PostDetailState> {
  String text;
  String title;
  ScrollController scrollController;

  double get offset =>
      scrollController.hasClients ? scrollController.offset : 0;

  @override
  PostDetailState clone() {
    return PostDetailState()
      ..text = text
      ..title = title
      ..scrollController = scrollController;
  }
}

PostDetailState initState(Map<String, dynamic> args) {
  return PostDetailState()
    ..text = 'The man who holds the firehood for people freezes to death in wind and snow'
    ..title = 'BBS project start!'
    ..scrollController = ScrollController();
}
