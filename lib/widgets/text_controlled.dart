import 'package:flutter/material.dart';

class TextControlled extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  final String text;
  final TextStyle textStyle;
  final TextAlign textAlign;
  const TextControlled(
      {Key key,
      this.mainAxisAlignment = MainAxisAlignment.end,
      this.text,
      this.textStyle,
      this.textAlign = TextAlign.right})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Text(
            text,
            overflow: TextOverflow.ellipsis,
            maxLines: 5,
            textAlign: textAlign,
            style: textStyle,
          ),
        )
      ],
    );
  }
}
