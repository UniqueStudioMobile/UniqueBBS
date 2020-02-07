import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart'
    hide DropdownMenuItem, DropdownButton, DropdownButtonHideUnderline;
import 'package:keyboard_actions/keyboard_actions.dart';
import 'package:unique_bbs/config/resource.dart';
import 'package:unique_bbs/post/action.dart';
import 'package:unique_bbs/widget/bbsdropdown.dart';

import 'state.dart';

const _ACTION_EDGE_PADDING = 10.0;
const _COLUMN_PADDING_EDGE = 15.0;
const _COLUMN_PADDING_TOP = 15.0;
const _COLUMN_BACKGROUND_PADDING_EDGE = 15.0;
const _TEXT_DROPPED_DOWN_GAP = 20.0;
const _DROPPED_DOWN_ITEM_HEIGHT = 23.0;
const _ROW_ITEM_GAP = 20.0;
const _SEND_BUTTON_EDGE_PADDING = 5.0;

const _TEXT_SIZE_17 = 17.0;
const _TEXT_SIZE_14 = 14.0;

Widget buildView(
    PostMainState state, Dispatch dispatch, ViewService viewService) {
  Widget _buildAppBar() {
    return AppBar(
      actions: <Widget>[
        GestureDetector(
          child: Padding(
            padding: const EdgeInsets.only(right: _ACTION_EDGE_PADDING),
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(right: _SEND_BUTTON_EDGE_PADDING),
                child: Text(
                  "发布",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: _TEXT_SIZE_14,
                      color: Theme.of(viewService.context).primaryColor),
                ),
              ),
            ),
          ),
          onTap: () {},
        )
      ],
    );
  }

  KeyboardActionsConfig _buildKeyboardConfig() {
    return KeyboardActionsConfig(
      keyboardActionsPlatform: KeyboardActionsPlatform.ALL,
      keyboardBarColor: ColorResource.backgroundGray,
      nextFocus: false,
      actions: [
        KeyboardAction(
          focusNode: state.titleTextNode,
        ),
        KeyboardAction(
          focusNode: state.contentTextNode,
          displayCloseWidget: false,
        )
      ],
    );
  }

  Widget _buildTopItems() {
    return Container(
      color: ColorResource.backgroundGray,
      child: Padding(
        padding: EdgeInsets.only(
            left: _COLUMN_PADDING_EDGE, right: _COLUMN_PADDING_EDGE),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    right: _TEXT_DROPPED_DOWN_GAP,
                  ),
                  child: Text(
                    "板块",
                    style: TextStyle(
                        fontSize: _TEXT_SIZE_17,
                        fontWeight: FontWeight.bold,
                        color: ColorResource.textGray),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: ColorResource.borderGray),
                    color: ColorResource.backgroundWhite,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: ButtonTheme(
                      alignedDropdown: true,
                      child: DropdownButton(
                        itemHeight: _DROPPED_DOWN_ITEM_HEIGHT,
                        items: state.groupList,
                        value: state.groupSelected,
                        onChanged: (T) {
                          dispatch(PostMainActionCreator.onGroupPopDown(T));
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: _ROW_ITEM_GAP, bottom: _ROW_ITEM_GAP),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: _TEXT_DROPPED_DOWN_GAP),
                    child: Text(
                      "类型",
                      style: TextStyle(
                          fontSize: _TEXT_SIZE_17,
                          fontWeight: FontWeight.bold,
                          color: ColorResource.textGray),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorResource.borderGray),
                      color: ColorResource.backgroundWhite,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: ButtonTheme(
                        alignedDropdown: true,
                        child: DropdownButton(
                          itemHeight: _DROPPED_DOWN_ITEM_HEIGHT,
                          items: state.typeList,
                          value: state.typeSelected,
                          onChanged: (T) {
                            dispatch(PostMainActionCreator.onTypePopDown(T));
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputArea() {
    return Padding(
      padding: EdgeInsets.only(
        left: _COLUMN_BACKGROUND_PADDING_EDGE,
        right: _COLUMN_BACKGROUND_PADDING_EDGE,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          TextField(
            decoration:
                InputDecoration(border: InputBorder.none, hintText: "请输入标题"),
            autofocus: false,
            focusNode: state.titleTextNode,
          ),
          Divider(
            height: 20.0,
            color: Color(0xff121212),
          ),
          TextField(
            decoration:
                InputDecoration(border: InputBorder.none, hintText: "请输入正文"),
            autofocus: false,
            maxLines: null,
            focusNode: state.contentTextNode,
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return KeyboardActions(
      config: _buildKeyboardConfig(),
      child: Container(
        color: ColorResource.backgroundGray,
        child: Padding(
          padding: EdgeInsets.only(
              left: _COLUMN_PADDING_EDGE,
              right: _COLUMN_PADDING_EDGE,
              top: _COLUMN_PADDING_TOP),
          child: Container(
            color: ColorResource.backgroundWhite,
            child: Column(
              children: <Widget>[
                _buildTopItems(),
                _buildInputArea(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  return Scaffold(
    appBar: _buildAppBar(),
    body: _buildBody(),
  );
}
