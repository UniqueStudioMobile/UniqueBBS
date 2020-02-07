import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:unique_bbs/config/resource.dart';
import 'package:unique_bbs/main/action.dart';
import 'package:unique_bbs/widget/CustomBottomBar.dart';

import 'state.dart';

Widget buildView(MainState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    body: state.currentPage,
    floatingActionButton: FloatingActionButton(
      child: Icon(
        Icons.add,
        color: Colors.white,
        size: 35,
      ),
      onPressed: () {
        dispatch(MainActionCreator.selectBoard());
      },
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    bottomNavigationBar: CustomBottomBar(
      dockIndex: 1,
      currentIndex: state.currentIndex,
      labelColor: Theme.of(viewService.context).primaryColor,
      unLabelColor: Theme.of(viewService.context).unselectedWidgetColor,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.message), title: Text(StringResource.home)),
        BottomNavigationBarItem(
            icon: Icon(Icons.person), title: Text(StringResource.me))
      ],
      onTap: (index) {
        dispatch(MainActionCreator.selectPage(index));
      },
      height: 60,
    ),
  );
}

BottomAppBar generateMainBottomBar() {
  return BottomAppBar();
}
