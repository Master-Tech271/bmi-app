import 'package:flutter/material.dart';
import 'package:bmi_app/constant.dart';

class BottomButton extends StatelessWidget {
  final Function onPressed;
  final String label;
  BottomButton({this.label, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      color: Color(kBottomContainerColor),
      height: kBottomContainerHeight,
      width: double.infinity,
      child: GestureDetector(
          onTap: onPressed,
          child: Center(
              child: Text(
            label,
            style: kLargeButtonTextStyle,
          ))),
    );
  }
}
