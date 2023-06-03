import 'package:customer_app/blocs/tab/tab.dart';
import 'package:customer_app/models/app_tab.dart';
import 'package:flutter/material.dart';

class BottomNavigationItem extends StatelessWidget {
  final Widget icon;
  final String text;
  final int index;
  final bool isActive;

  BottomNavigationItem({this.icon, this.text, this.index, this.isActive});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: () {
              print(index);
              TabBloc.getInstance().add(UpdateTab(AppTab.values[index]));
              // BlocProvider.of<HomeBloc>(context).add(SelectTab(index));
              // BlocProvider.of<AuthenticationBloc>(context).add(LoggedOut());
            },
            child: Container(
              padding: EdgeInsets.all(8.0),
              color: isActive ? Color(0xFFE5C775) : Color(0xFFBC962B),
              child: Center(
                child: Column(
                  children: <Widget>[
                    icon,
                    Text(text,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
