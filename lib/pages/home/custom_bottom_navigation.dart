import 'package:customer_app/models/models.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class CustomBottomNavigation extends StatelessWidget {
  final AppTab activeTab;

  const CustomBottomNavigation({Key key, this.activeTab}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 80),
      height: 61,
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          BottomNavigationItem(
              icon: Image.asset(
                'assets/images/icon_exit.png',
                width: 25,
                height: 25,
              ),
              text: 'خروج',
              isActive: AppTab.values.indexOf(activeTab) == 0,
              index: 0),
          BottomNavigationItem(
              icon: Image.asset(
                'assets/images/icon_envelope.png',
                width: 25,
                height: 25,
              ),
              text: 'التواصل',
              isActive: AppTab.values.indexOf(activeTab) == 1,
              index: 1),
          BottomNavigationItem(
              icon: Image.asset(
                'assets/images/icon_person.png',
                width: 25,
                height: 25,
              ),
              text: 'الحساب',
              isActive: AppTab.values.indexOf(activeTab) == 2,
              index: 2),
          BottomNavigationItem(
              icon: Image.asset(
                'assets/images/icon_paper.png',
                width: 25,
                height: 25,
              ),
              text: 'الطلبات',
              isActive: AppTab.values.indexOf(activeTab) == 3,
              index: 3),
          BottomNavigationItem(
              icon: Image.asset(
                'assets/images/icon_search.png',
                width: 25,
                height: 25,
              ),
              text: 'البحث',
              isActive: AppTab.values.indexOf(activeTab) == 4,
              index: 4),
        ],
      ),
    );
  }
}
