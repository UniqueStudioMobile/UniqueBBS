import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(ForumState state, Dispatch dispatch, ViewService viewService) {
  ListAdapter adapter = viewService.buildAdapter();
  return Container(
    child: ListView.builder(
      itemBuilder: adapter.itemBuilder,
      itemCount: adapter.itemCount,
    ),
  );
}
