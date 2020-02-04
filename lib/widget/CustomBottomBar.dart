import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef onTapFun = void Function(int index);

class CustomBottomBar extends BottomAppBar {
  onTapFun onTap;
  int dockIndex;
  List<BottomNavigationBarItem> items;
  Color labelColor;
  Color unLabelColor;
  TextStyle labelTextStyle, unLabelTextStyle;
  double height;
  int currentIndex;

  CustomBottomBar(
      {this.onTap,
      this.dockIndex,
      this.items,
      this.labelColor,
      this.unLabelColor,
      this.labelTextStyle,
      this.unLabelTextStyle,
      this.currentIndex = 0,
      this.height})
      : assert(items != null),
        super(
            child: _generateChild(
                items,
                onTap,
                dockIndex,
                labelColor,
                unLabelColor,
                labelTextStyle,
                unLabelTextStyle,
                height,
                currentIndex));

  static Widget _generateChild(List<BottomNavigationBarItem> items,
      [onTapFun onTap,
      int dockIndex,
      Color labelColor,
      Color unLabelColor,
      TextStyle labelTextStyle,
      TextStyle unLabelTextStyle,
      double height,
      int currentIndex]) {
    List<Widget> children = List();
    for (int i = 0; i < items.length; i++) {
      var item = items[i];
      var isLabel = i == currentIndex;
      children.add(InkWell(
        onTap: () {
          onTap(i);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconTheme(
              data: IconThemeData(color: isLabel ? labelColor : unLabelColor),
              child: item.icon,
            ),
            DefaultTextStyle(
              style: isLabel
                  ? labelTextStyle ?? TextStyle(color: labelColor)
                  : unLabelTextStyle ?? TextStyle(color: unLabelColor),
              child: item.title,
            )
          ],
        ),
      ));
    }

    return Container(
      height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: dockIndex != null ? children : List.from(children)
          ..insert(dockIndex, SizedBox()),
      ),
    );
  }
}
