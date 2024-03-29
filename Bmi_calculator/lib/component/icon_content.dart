import 'package:flutter/material.dart';

import 'package:bmi_calculator/constants.dart';

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: kIconSize,
        ),
        SizedBox(
          height: kSpaceIconTitle,
        ),
        Text(
          label,
          style: kLabelNameTextStyle,
        ),
      ],
    );
  }
}
