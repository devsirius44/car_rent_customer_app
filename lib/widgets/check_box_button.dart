import 'package:customer_app/styles/styles.dart';
import 'package:flutter/material.dart';

class CheckBoxButton extends StatelessWidget {
  final String text;
  final bool isChecked;
  final Function onPressed;
  final double width;
  final double height;
  final double fontSize;
  const CheckBoxButton(
      {Key key,
      this.text,
      this.isChecked = false,
      this.onPressed,
      this.width = 80,
      this.height = 45,
      this.fontSize = 14})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        // constraints: BoxConstraints(maxWidth: 120),
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: isChecked ? primaryColor : Colors.white,
            border: Border.all(color: primaryColor)),
        child: Center(
          child: Text(text,
              style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  color: isChecked ? Colors.white : primaryColor)),
        ),
      ),
    );
  }
}
