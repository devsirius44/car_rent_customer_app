import 'package:flutter/cupertino.dart';

import 'index.dart';

class SearchListForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          children: List.generate(4, (int index) {
        return SearchListItem();
      })),
    );
  }
}
