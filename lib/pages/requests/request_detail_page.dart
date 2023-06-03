import 'package:customer_app/pages/home/home.dart';
import 'package:customer_app/styles/styles.dart';
import 'package:customer_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class RequestDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: NavMenu(),
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: Row(
                children: <Widget>[
                  Builder(
                    builder: ((context) {
                      return InkWell(
                          onTap: () {
                            Scaffold.of(context).openDrawer();
                          },
                          child: Icon(Icons.menu,
                              size: 25, color: Colors.black));
                    }),
                  ),
                  Spacer(),
                  Icon(Icons.search, size: 25, color: Colors.black)
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(
                        Icons.keyboard_arrow_left,
                        color: Color(0xFFBC962B),
                        size: 30,
                      ),
                    )),
                Container()
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: <Widget>[
                      TextControlled(
                        text: 'تفاصيل الطلب',
                        textStyle: AppStyles.textStyles16_black,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          children: <Widget>[
                            KeyValueText(
                              label: ':الطلب رقم',
                              value: '22314',
                            ),
                            KeyValueText(
                              label: ':الطلب رقم',
                              value: 'طلب جديد - في إنتظار الموافقة.',
                              valueStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF1B9700)),
                            ),
                            KeyValueText(
                              label: 'الطلب رقم :',
                              value: '22/11/2019',
                            ),
                          ],
                        ),
                      ),
                      TextControlled(
                        text: 'معلومات الطلب',
                        textStyle: AppStyles.textStyles16_black,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          children: <Widget>[
                            KeyValueText(
                              label: ':الموسسة',
                              value: 'مؤسسة وادي السيارات',
                            ),
                            KeyValueText(
                              label: ':الطلب رقم',
                              value: 'طلب جديد - في إنتظار الموافقة.',
                            ),
                            KeyValueText(
                              label: 'الطلب رقم :',
                              value: '22/11/2019',
                            ),
                          ],
                        ),
                      ),
                      TextControlled(
                        text: 'معلومات الطلب',
                        textStyle: AppStyles.textStyles16_black,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          children: <Widget>[
                            KeyValueText(
                              label: ':الموسسة',
                              value: 'مؤسسة وادي السيارات',
                            ),
                            KeyValueText(
                              label: ':الطلب رقم',
                              value: 'طلب جديد - في إنتظار الموافقة.',
                            ),
                            KeyValueText(
                              label: 'الطلب رقم :',
                              value: '22/11/2019',
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          children: <Widget>[
                            KeyValueText(
                              label: ':الطلب رقم',
                              value: '22314',
                            ),
                            KeyValueText(
                              label: ':الطلب رقم',
                              value: 'علي خالد محمد الاحمد',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Center(
                          child: Text('كود التفعيل',
                              style: AppStyles.textStyle12_black)),
                      Container(
                        margin: EdgeInsets.only(
                            top: 16.0, right: 24, bottom: 30, left: 24.0),
                        padding: EdgeInsets.symmetric(
                          horizontal: 24.0,
                          vertical: 8.0,
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.0, color: Color(0xFF707070))),
                        child: Text(
                          '6  6  3  4  8  9  1',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.0,
                              color: Colors.black),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
