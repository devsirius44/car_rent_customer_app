import 'package:flutter/material.dart';

import 'chatting_room/index.dart';

class CommunicationItem extends StatelessWidget {
  final VoidCallback onTap;

  const CommunicationItem({Key key, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => ChattingRoomPage()));
      },
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Row(children: <Widget>[
              Text('3:39 PM',
                  style: TextStyle(color: Color(0xFF8E8E8E), fontSize: 15)),
              Spacer(),
              Text('تنبيه من الإدارة.',
                  style: TextStyle(
                      color: Color(0xFFBC962B),
                      fontSize: 17,
                      fontWeight: FontWeight.bold)),
              const SizedBox(width: 15),
              Icon(Icons.keyboard_arrow_right, color: Color(0xFFC7C7CC))
            ]),
            const SizedBox(height: 5),
            Container(
              margin: EdgeInsets.only(right: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text('متابعة تحديث معلومات السيارات',
                      style: TextStyle(color: Colors.black, fontSize: 15)),
                  Text(
                      'نرجو القيام بتحديث معلومات السيارات لديكم في اسرع وقت ممكن وذلك لتفادي اغلاق الحساب لدينا.',
                      textAlign: TextAlign.end,
                      maxLines: 2,
                      style: TextStyle(color: Color(0xFF8E8E8E), fontSize: 15)),
                ],
              ),
            ),
            Divider(
              indent: 20,
              color: Color(0xFF8E8E8E),
            ),
          ],
        ),
      ),
    );
  }
}
