import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:unique_bbs/config/resource.dart';

import 'state.dart';

Widget buildView(InfoState state, Dispatch dispatch, ViewService viewService) {
  return SingleChildScrollView(
    child: Padding(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Padding(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          ImageIcon(
                            AssetImage(AssetResource.icHomeInfoAnnou),
                            size: 18,
                          ),
                          Text(
                            '通知公告',
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                      ImageIcon(
                        AssetImage(AssetResource.icHomeInfoAnnouArraw),
                        size: 15,
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[],
                  )
                ],
              ),
              padding: EdgeInsets.all(10),
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Container(
              width: double.infinity,
              height: 60,
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26),
                  gradient: LinearGradient(colors: [
                    Theme.of(viewService.context).primaryColor,
                    Theme.of(viewService.context).primaryColorLight
                  ])),
              alignment: Alignment.center,
              child: Text(
                '查看report',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
          GridView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            children: <Widget>[
              _generateHomeModuleItem(
                  AssetResource.icHomeInfoProjectTask, '项目任务', () {}),
              _generateHomeModuleItem(
                  AssetResource.icHomeInfoNewComerTask, '新人任务', () {}),
              _generateHomeModuleItem(
                  AssetResource.icHomeInfoFileKeep, '文件留存', () {}),
              _generateHomeModuleItem(
                  AssetResource.icHomeInfoCommu, '交流分享', () {}),
            ],
          )
        ],
      ),
      padding: EdgeInsets.only(left: 16, right: 16, top: 10),
    ),
  );
}

Widget _generateHomeModuleItem(
    String assetIconPath, String title, VoidCallback onTap) {
  return Padding(
    child: InkWell(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26)),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ImageIcon(
                AssetImage(assetIconPath),
                size: 45,
              ),
              Padding(
                child: Text(
                  title,
                  style: TextStyle(fontSize: 16),
                ),
                padding: EdgeInsets.only(top: 5),
              )
            ],
          ),
        ),
      ),
      onTap: onTap,
    ),
    padding: EdgeInsets.all(10),
  );
}
