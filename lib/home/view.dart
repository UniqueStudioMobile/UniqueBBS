import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:unique_bbs/config/resource.dart';
import 'package:unique_bbs/config/route.dart';
import 'package:unique_bbs/home/action.dart';

import 'state.dart';

Widget buildView(HomeState state, Dispatch dispatch, ViewService viewService) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Container(
        height: 90,
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              child: TabBar(
                labelStyle: TextStyle(fontSize: 16),
                unselectedLabelColor:
                    Theme.of(viewService.context).unselectedWidgetColor,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorPadding: EdgeInsets.only(bottom: 5),
                controller: state.homeTabController,
                tabs: <Widget>[
                  Tab(
                    text: StringResource.info,
                  ),
                  Tab(
                    text: StringResource.forum,
                  )
                ],
              ),
              width: 140,
            ),
            Container(
              width: 110,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                    icon: ImageIcon(
                      AssetImage(AssetResource.icHomeSearch),
                    ),
                    onPressed: () {
                      dispatch(HomeActionCreator.openSearch());
                    },
                  ),
                  IconButton(
                    icon: ImageIcon(
                      AssetImage(AssetResource.icHomeMessage),
                    ),
                    onPressed: () {
                      dispatch(HomeActionCreator.openMessagePage());
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
      Expanded(
        child: TabBarView(
          physics: ClampingScrollPhysics(),
          controller: state.homeTabController,
          children: <Widget>[
            viewService.buildComponent(BBSRoute.information),
            viewService.buildComponent(BBSRoute.forum)
          ],
        ),
      )
    ],
  );
}
