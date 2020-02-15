import 'dart:math';

import 'package:flutter/material.dart';

const _max_dist = 70.0;
const _max_angle = pi / 2;
const _animation_time = 500;

class CustomFAB extends StatefulWidget {
  CustomFAB({Key key, this.children});

  List<Widget> children = const <Widget>[];

  @override
  State createState() => _CustomFABState();
}

class _CustomFABState extends State<CustomFAB>
    with SingleTickerProviderStateMixin {
  bool isOpened = false;
  AnimationController _animationController;
  Animation<double> _translateButton;
  double _deltaAngle = 0;
  double _anglePadding = pi / 18;
  Widget _mainBtn;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: _animation_time))
      ..addListener(() {
        setState(() {
//          print(_translateButton.value);
        });
      });
    _translateButton =
        Tween<double>(begin: 0, end: -_max_dist).animate(CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.0,
        0.75,
        curve: Curves.easeOut,
      ),
    ));
    _mainBtn = _mainButton();
  }

  _animate() {
    if (!isOpened) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
    isOpened = !isOpened;
  }

  Widget _mainButton() {
    return Container(
      height: 70,
      width: 70,
      child: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: _animate,
        child: Icon(
          Icons.book,
          color: Colors.grey,
        ),
        heroTag: 'FABMain',
      ),
    );
  }

  Widget _wrapWidget(Widget origin, int factor) {
    double base = _translateButton.value;
    double dx = sin(_deltaAngle * factor + _anglePadding);
    double dy = cos(_deltaAngle * factor + _anglePadding);
    return Transform(
      transform: Matrix4.translationValues(dx * base, dy * base, 0),
      child: Container(
        child: FloatingActionButton(
          onPressed: null,
          child: origin,
          backgroundColor: Colors.white,
          heroTag: 'FAB${factor.toString()}',
          elevation: 2,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> children =
        widget.children == null ? <Widget>[] : widget.children;
    if (children.length <= 1) {
      _anglePadding = _max_angle / 2;
    } else {
      _deltaAngle = (_max_angle - 2 * _anglePadding) / (children.length - 1);
    }
    int base = 0;
    List<Widget> replace = <Widget>[];
    for (Widget widget in children) {
      replace.add(_wrapWidget(widget, base++));
    }
    replace.add(_mainBtn);
    return Stack(alignment: Alignment.center, children: replace);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
