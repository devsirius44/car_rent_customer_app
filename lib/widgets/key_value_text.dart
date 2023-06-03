import 'package:customer_app/styles/styles.dart';
import 'package:flutter/material.dart';

class KeyValueText extends StatelessWidget {
  final String label;
  final String value;
  final TextStyle labelStyle;
  final TextStyle valueStyle;
  final double valueWidth;

  const KeyValueText(
      {Key key,
      this.label,
      this.value,
      this.labelStyle = AppStyles.textStyles14_black,
      this.valueStyle = AppStyles.textStyles14,
      this.valueWidth = 80})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Text(
          value,
          style: valueStyle,
        ),
        SizedBox(
          width: 4.0,
        ),
        Container(
          width: valueWidth,
          child: Text(label, style: labelStyle),
        )
      ],
    );
  }
}
