import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(ItemState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
    decoration: BoxDecoration(
      color: Color(0xffffffff),
      borderRadius: BorderRadius.circular(16),
    ),
    height: 125,
    child: GestureDetector(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              FlutterLogo(size: 18),
              Expanded(
                flex: 1,
                child: Text(
                  "闲杂讨论",
                  style: TextStyle(
                    color: Color(0xff555555),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Icon(
                Icons.chevron_right,
                size: 16,
              )
            ],
          ),
          Row(
            children: <Widget>[
              CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage(
                    'http://thecatapi.com/api/images/get?format=src'
                    '&size=small&type=jpg#${state.hashCode}'),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "2020年举办全球Hackday吧！",
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.fade,
                    maxLines: 1,
                  ),
                  Text(
                    "2020.01.19 肖宇轩 发布",
                    style: TextStyle(
                      color: Color(0xff999999),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      onTap: () {},
    ),
  );
}
