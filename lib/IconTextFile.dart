import 'package:flutter/material.dart';
import 'ConstantFile.dart';

class RepeatTextandIconWidget extends StatelessWidget {
  RepeatTextandIconWidget({@required this.icondata,this.label});
  final IconData icondata;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icondata,
          size: 85.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: KLabelStyle,
        ),
      ],
    );
  }
}