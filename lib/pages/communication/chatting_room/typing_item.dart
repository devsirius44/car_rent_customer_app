import 'package:flutter/material.dart';

class Typing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Image.asset(
          'assets/images/typing.png',
          width: 60,
          height: 60,
        ),
      ),
    );
  }
}
