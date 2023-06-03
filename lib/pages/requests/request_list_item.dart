import 'package:customer_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'index.dart';

class RequestListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => RequestDetailPage()));
      },
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Row(children: <Widget>[
              Expanded(
                flex: 1,
                child: Text('تاريخ الطلب',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xFF8E8E8E), fontSize: 15)),
              ),
              Expanded(
                flex: 1,
                child: Text('الطلب رقم # 2212:',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: Color(0xFFBC962B),
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
              ),
              const SizedBox(width: 6.0),
              Icon(Icons.keyboard_arrow_right, color: Color(0xFFC7C7CC))
            ]),
            TextControlled(
              text: '22/10/2019 - 02:22:00 AM',
              textAlign: TextAlign.left,
            ),
            Row(children: <Widget>[
              Expanded(
                flex: 1,
                child: Text('طلب جديد',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xFF26A251), fontSize: 15)),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    TextControlled(
                      text: 'ماركة السيارة     فورد:',
                      textAlign: TextAlign.end,
                      // style: AppStyles.textStyle12_black,
                    ),
                    TextControlled(
                      text: 'ماركة السيارة     فورد:',
                      textAlign: TextAlign.end,
                      // style: AppStyles.textStyle12_black,
                    ),
                  ],
                ),
              ),
            ]),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'إلغاء',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/images/red_close.png',
                            width: 16, height: 16),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'تمديد',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/images/calendar.png',
                            width: 16, height: 16),
                      )
                    ],
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Text(
                      'موسسة وادي السيارات',
                      textAlign: TextAlign.end,
                    ))
              ],
            ),
            Divider(
              indent: 4.0,
              height: 2.0,
              color: Color(0xFF8E8E8E),
            ),
          ],
        ),
      ),
    );
  }
}
