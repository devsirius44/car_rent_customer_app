import 'package:customer_app/blocs/tab/tab.dart';
import 'package:customer_app/models/models.dart';
import 'package:customer_app/pages/account/index.dart';
import 'package:customer_app/pages/communication/index.dart';
import 'package:customer_app/pages/requests/index.dart';
import 'package:customer_app/pages/search/search_type/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TabBloc>(
          create: (context) =>
              TabBloc.getInstance()..add(UpdateTab(AppTab.search)),
        )
      ],
      child: BlocBuilder<TabBloc, AppTab>(
        builder: (context, activeTab) {
          return Scaffold(
            drawer: Drawer(
              child: NavMenu(),
            ),
            body: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30, vertical: 15),
                  child: Row(
                    children: <Widget>[
                      Builder(
                        builder: ((context) {
                          return InkWell(
                              onTap: () {
                                Scaffold.of(context).openDrawer();
                              },
                              child: Icon(
                                Icons.menu,
                                size: 25,
                                color: Colors.black,
                              ));
                        }),
                      ),
                      Spacer(),
                      Icon(Icons.search, size: 25, color: Colors.black),
                    ],
                  ),
                ),
                Expanded(
                  child: getBody(activeTab),
                )
              ],
            ),
            bottomNavigationBar: CustomBottomNavigation(
              activeTab: activeTab,
            ),
          );
        },
      ),
    );
  }
}

Widget getBody(AppTab activeTab) {
  if (activeTab == AppTab.account) {
    return AccountPage();
  } else if (activeTab == AppTab.communication) {
    return CommunicationPage();
  } else if (activeTab == AppTab.exit) {
    return Text('exit');
  } else if (activeTab == AppTab.request) {
    return RequestPage();
  } else {
    return SearchPage();
  }
}
