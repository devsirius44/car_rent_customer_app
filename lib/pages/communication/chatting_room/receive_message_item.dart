import 'package:customer_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ReceiveMessageItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Align(
        alignment: Alignment.centerLeft,
        child: BubbleMessage(
          painter: ReceiveBubblePainter(),
          child: Container(
            constraints: BoxConstraints(
              maxWidth: 250.0,
              minWidth: 50,
            ),
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            child: Text(
              'ممكن الطريقة كيف عشان احدث المعلومات؟',
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
