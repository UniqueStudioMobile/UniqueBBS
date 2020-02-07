import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unique_bbs/config/resource.dart';
import 'package:unique_bbs/config/route.dart';

class BoardDialog extends ModalRoute<void> {
  List<String> _boards = [
    'report',
    '通知\n公告',
    '项目\n任务',
    '新人\n任务',
    '文件\n存留',
    '知识\n分享',
    '闲谈\n杂论',
    '奇思\n妙想',
    '联创\n趣梗',
  ];

  TextStyle boardTextStyle =
      TextStyle(fontSize: 18, fontWeight: FontWeight.bold);

  @override
  Color get barrierColor => Colors.black.withOpacity(0.5);

  @override
  bool get barrierDismissible => false;

  @override
  String get barrierLabel => null;

  @override
  bool get maintainState => true;

  @override
  bool get opaque => false;

  @override
  Duration get transitionDuration => Duration(milliseconds: 100);

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return Material(
      type: MaterialType.transparency,
      child: _buildBoardDialogContent(context),
    );
  }

  Widget _buildBoardDialogContent(BuildContext context) {
    return Center(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              '请先选择发帖板块',
              style: TextStyle(color: Colors.white, fontSize: 30.0),
            ),
            Flexible(child: _buildBoardGridView()),
            SizedBox(
              width: 50,
              height: 50,
              child: RaisedButton(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(0.0),
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  color: Theme.of(context).indicatorColor,
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBoardGridView() {
    return GridView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, childAspectRatio: 1.0),
        itemCount: _boards.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(25),
            child: RaisedButton(
                child: Text(_boards[index], style: boardTextStyle),
                shape: CircleBorder(),
                color: ColorResource.backgroundWhite,
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, BBSRoute.posting);
                }),
          );
        });
  }
}
