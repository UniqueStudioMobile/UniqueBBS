import 'dart:ui';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:unique_bbs/config/resource.dart';
import 'package:unique_bbs/widget/custom_fab.dart';

import 'action.dart';
import 'state.dart';

const _icon_size = 25.0;
const _icon_spacing = 16.0;

const _divider_thick = 1.0;
const _divider_height = 16.0;
const _bottom_height = 50.0;
const _max_head_height = 120.0;
const _min_head_height = 72.0;

const _padding_left = 15.0;
const _padding_right = 15.0;
const _padding_top = 10.0;

const _padding_item_left = 10.0;
const _padding_item_right = 15.0;
const _padding_item_top = 7.0;
const _padding_item_bottom = 7.0;

double _screenHeight = 0.0;
double _textHeight = 0.0;
double _headHeight = _max_head_height;
double _buttonOffset = 0.0;

final GlobalKey _globalKey = GlobalKey();

Widget buildView(
    PostDetailState state, Dispatch dispatch, ViewService viewService) {
  _initParas(state, dispatch, viewService);

  return Scaffold(
    backgroundColor: ColorResource.backgroundGray,
    floatingActionButton: _buildCustomFAB(),
    appBar: _buildHead(state),
    body: ListView(
      controller: state.scrollController,
      children: <Widget>[
        _buildText(state),
        Divider(thickness: _divider_thick,),
        _buildButtons(),
        _buildComments()
      ],
    ),
    bottomSheet: _buildBottomSheet(),
  );
}

Widget _buildCustomFAB() {
  return Padding(
    padding: EdgeInsets.only(
        bottom: _buttonOffset < _screenHeight ? 0 : _bottom_height),
    child: CustomFAB(
      children: <Widget>[
        GestureDetector(
          child: Text(
            StringResource.edit,
            style: const TextStyle(color: Colors.grey),
          ),
          onTap: () {},
        ),
        GestureDetector(
          child: Text(
            StringResource.delete,
            style: const TextStyle(color: Colors.grey),
          ),
          onTap: () {},
        )
      ],
    ),
  );
}

Widget _buildHead(PostDetailState state) {
  double progress =
      (_headHeight - _min_head_height) / (_max_head_height - _min_head_height);
  return PreferredSize(
      child: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          bottom: PreferredSize(
              child: Divider(thickness: _divider_thick,),
              preferredSize: null),
          title: Opacity(
            opacity: 1 - progress,
            child: Text(
              state.title,
              style: TextStyle(color: Colors.black),
            ),
          ),
          flexibleSpace: Opacity(
            opacity: progress,
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(bottom: 20, left: 50),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: CircleAvatar(
                      radius: 30,
                      // TODO: make sure not null
                      backgroundImage: NetworkImage('http://image.baidu.com/search/down?tn=download&ipn=dwnl&word=download&ie=utf8&fr=result&url=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201801%2F13%2F20180113233412_5GWXh.thumb.700_0.jpeg&thumburl=http%3A%2F%2Fimg4.imgtn.bdimg.com%2Fit%2Fu%3D4134086847%2C3165816965%26fm%3D26%26gp%3D.jpg'),
                    ),
                  ),
                  Text.rich(TextSpan(
                    children: [
                      TextSpan(text: state.title + '\n', style: TextStyle(fontSize: 20)),
                      TextSpan(text: '2020.01.01'),
                      TextSpan(text: ' xyx', style: TextStyle(color: Colors.deepPurpleAccent))
                    ]
                  ))
                ],
              ),
            ),
          )),
      preferredSize: Size.fromHeight(_headHeight));
}

Widget _buildText(PostDetailState state) {
  return Container(
    key: _globalKey,
    alignment: Alignment.center,
    // TODO: remove it after test
    height: 600,
    padding: EdgeInsets.only(left: _padding_left, right: _padding_right),
    child: Text(state.text),
  );
}

Widget _buildButtons() {
  return Row(
    children: <Widget>[
      _buildIconWithPadding(Icons.thumb_up),
      _buildIconWithPadding(Icons.comment),
      _buildIconWithPadding(Icons.star)
    ],
  );
}

Widget _buildComments() {
  return Container(
    padding: const EdgeInsets.only(
        left: _padding_left,
        right: _padding_right,
        top: _padding_top,
        bottom: _padding_top),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          StringResource.newComment,
          style: const TextStyle(color: Colors.grey, fontSize: 15),
        ),
        Card(
          color: Color.fromARGB(255, 243, 243, 243),
          elevation: 0.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: Column(
            children: _buildItems(),
          ),
        ),
      ],
    ),
  );
}

List<Widget> _buildItems() {
  List<Widget> items = <Widget>[];
  for (int i = 0; i < 10; i++) {
    items.add(Padding(
      padding: const EdgeInsets.only(
          top: _padding_item_top, bottom: _padding_item_bottom),
      child: Row(
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.only(
                  left: _padding_item_left, right: _padding_item_right),
              child: Icon(Icons.people)),
          Column(
            children: <Widget>[
              Text('陈钊燚'),
              Text('肖神哥哥我可以:-)'),
            ],
          )
        ],
      ),
    ));
  }
  return items;
}

Widget _buildBottomSheet() {
  return Visibility(
    visible: _buttonOffset > _screenHeight,
    child: Container(
      height: _bottom_height,
      color: ColorResource.borderGray,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: SizedBox.expand(
                child: Card(
                  color: Color.fromARGB(255, 200, 200, 200),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Text('Comment'),
                  ),
                ),
              ),
            ),
          ),
          _buildIconWithNumber(Icons.thumb_up, '12'),
          _buildIconWithNumber(Icons.comment, '2'),
          _buildIconWithNumber(Icons.star, '1'),
        ],
      ),
    ),
  );
}

Widget _buildIconWithPadding(IconData data) {
  return Padding(
      padding: const EdgeInsets.only(left: _icon_spacing, right: _icon_spacing),
      child: GestureDetector(
        child: Icon(
          data,
          size: _icon_size,
          color: Colors.grey,
        ),
        onTap: () {
//          println('click!');
        },
      ));
}

Widget _buildIconWithNumber(IconData data, String number) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      _buildIconWithPadding(data),
      Text(
        number,
        style: const TextStyle(color: Colors.grey, fontSize: 10),
      )
    ],
  );
}

void _initParas(
    PostDetailState state, Dispatch dispatch, ViewService viewService) {
  // add listener and configure
  if (!state.scrollController.hasClients) {
    _textHeight = 0.0;
    state.scrollController.addListener(() {
      dispatch(PostDetailActionCreator.onInvalidate());
    });
    _screenHeight = MediaQuery.of(viewService.context).size.height;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _textHeight = _globalKey.currentContext.size.height;
//      print('post frame height: $_textHeight');
      dispatch(PostDetailActionCreator.onInvalidate());
    });
  }

  // initialize paras for build
  double offset = state.offset;
  _headHeight = _max_head_height - offset < _min_head_height
      ? _min_head_height
      : _max_head_height - offset;
  _buttonOffset = _headHeight + _textHeight + _divider_height - offset;
//  print(_screenHeight - _buttonOffset);
}
