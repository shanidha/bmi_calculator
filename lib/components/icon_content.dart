import 'package:flutter/material.dart';
import '../constants.dart';

class IconContent extends StatelessWidget {
  IconContent({this.icondata, this.label});
  final IconData? icondata;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icondata,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label!,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
