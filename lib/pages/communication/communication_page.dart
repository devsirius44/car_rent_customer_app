import 'package:flutter/material.dart';
import 'index.dart';

class CommunicationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
            children: List.generate(8, (index) {
          return CommunicationItem();
        })),
      ),
    );
  }
}
