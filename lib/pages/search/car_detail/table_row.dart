import 'package:flutter/material.dart';

class CustomTableRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(5, (index) {
      return Expanded(
        flex: 1,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(width: 1.0, color: Colors.grey[400])),
          padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
          child: Text(
            '09.00',
            textAlign: TextAlign.center,
          ),
        ),
      );
    }));
  }
}
