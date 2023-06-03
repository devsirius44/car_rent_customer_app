import 'dart:io';

import 'package:customer_app/styles/styles.dart';
import 'package:customer_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AvatarSettingPanel extends StatelessWidget {
  final Function onImagePick;
  final String imageUrl;
  final File image;
  AvatarSettingPanel({this.imageUrl = '', this.onImagePick, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFBC962B)),
          color: Color(0xFFBC962B)),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Center(
              child: Image.asset(
                'assets/images/round_person.png',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  TextControlled(
                    text: 'صورة الحساب',
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 8.0, bottom: 12.0),
                        padding: EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 24.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: <BoxShadow>[
                            new BoxShadow(
                              color: const Color(0xcc000000),
                              offset: new Offset(0.0, 5.0),
                              blurRadius: 2.0,
                            ),
                          ],
                        ),
                        child:
                            Text('مسح الصورة', style: AppStyles.textStyles14),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/camera.png',
                          width: 36,
                          height: 30,
                        ),
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/play.png',
                          width: 36,
                          height: 30,
                        ),
                      ),
                      SizedBox(width: 30)
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
