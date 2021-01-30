import 'package:coworking/public/style/Style.dart';
import 'package:flutter/material.dart';

class IconFooter extends StatelessWidget {
  IconData _icons;
  bool _active;

  IconFooter(this._icons, this._active);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Spacer(),
        Icon(
          this._icons,
          color: (this._active) ? primaryPurple : primaryGreyBold,
          size: 24,
        ),
        Spacer(),
        Container(
            width: 25,
            height: 2,
            color: (this._active) ? primaryPurple : Colors.transparent)
      ],
    );
  }
}
