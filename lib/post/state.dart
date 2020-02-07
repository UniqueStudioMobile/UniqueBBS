import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide DropdownMenuItem;
import 'package:unique_bbs/widget/bbsdropdown.dart';

class PostMainState implements Cloneable<PostMainState> {
  final FocusNode titleTextNode = FocusNode();
  final FocusNode contentTextNode = FocusNode();

  String groupSelected = groupTemplate[1];

  String typeSelected = typeTemplate[1];

  static final groupTemplate = <String>["report", "新人任务"];

  static final typeTemplate = <String>["面向组内", "面向全队"];

  static final itemBuilder = (String val) {
    return DropdownMenuItem(
      value: val,
      child: Text(
        val,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  };

  final List<DropdownMenuItem> groupList = groupTemplate.map(itemBuilder).toList();

  final List<DropdownMenuItem> typeList = typeTemplate.map(itemBuilder).toList();

  @override
  PostMainState clone() {
    return PostMainState()
      ..typeSelected = typeSelected
    ..groupSelected = groupSelected;
  }
}

PostMainState initState(Map<String, dynamic> args) {
  return PostMainState();
}
