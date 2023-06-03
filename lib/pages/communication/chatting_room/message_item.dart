import 'package:customer_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MessageItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Align(
        alignment: Alignment.centerRight,
        child: BubbleMessage(
          painter: BubblePainter(),
          child: Container(
            constraints: BoxConstraints(
              maxWidth: 250.0,
              minWidth: 50,
            ),
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            child: Text(
              'your text variable',
              softWrap: true,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
