import 'package:flutter/material.dart';

class NavMenuItem extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const NavMenuItem({Key key, this.title, this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title,
          style: TextStyle(
              fontSize: 18,
              color: Color(0xFFBC962B),
              fontWeight: FontWeight.bold)),
    );
  }
}

class NavMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: EdgeInsets.only(right: 30, top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          NavMenuItem(
              title: 'الإشتراكات',
              onPressed: () {
                //  BlocProvider.of<HomeBloc>(context).add(SelectMenu(0));
              }),
          NavMenuItem(
              title: 'الإعدادت',
              onPressed: () {
                //  BlocProvider.of<HomeBloc>(context).add(SelectMenu(0));
              }),
          NavMenuItem(
              title: 'تسجيل خروج',
              onPressed: () {
                //  BlocProvider.of<HomeBloc>(context).add(SelectMenu(0));
              }),
        ],
      ),
    );
  }
}
