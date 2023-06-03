import 'package:customer_app/widgets/widgets.dart';
import 'package:customer_app/pages/home/nav_menu.dart';
import 'package:flutter/material.dart';

import 'index.dart';

class SearchListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: NavMenu(),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Row(
              children: <Widget>[
                Builder(
                  builder: ((context) {
                    return InkWell(
                        onTap: () {
                          Scaffold.of(context).openDrawer();
                        },
                        child:
                            Icon(Icons.menu, size: 25, color: Colors.black));
                  }),
                ),
                Spacer(),
                Icon(Icons.search, size: 25, color: Colors.black)
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(
                    // bottom: 15,
                    left: 20,
                    right: 20,
                  ),
                  width: MediaQuery.of(context).size.width,
                  // decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  //   BoxShadow(offset: Offset(0, 5), color: Colors.grey[200])
                  // ]),
                  child: Column(
                    children: <Widget>[
                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Container(),
                          ),
                          Expanded(
                            flex: 1,
                            child: DropDownWidget(
                              itemList: ['1', '2'],
                              onChanged: (value) {},
                              hintText: 'السعر',
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            flex: 1,
                            child: Text('الترتيب حسب :'),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Expanded(child: SearchListForm()),
              ],
            ),
          )
        ],
      ),
    );
  }
}
