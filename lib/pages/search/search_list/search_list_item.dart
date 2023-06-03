import 'package:customer_app/pages/search/car_detail/car_detail_page.dart';
import 'package:customer_app/styles/styles.dart';
import 'package:customer_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SearchListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => CarDetailPage()));
      },
      child: Card(
        elevation: 2,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          decoration: BoxDecoration(
              color: Colors.white, border: Border.all(color: Colors.grey)),
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset('assets/images/icon_brand.png',
                      width: 88, height: 66, fit: BoxFit.fill),
                  Image.asset('assets/images/car.png',
                      width: 88, height: 57, fit: BoxFit.fill),
                ],
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'فرع الراكة الشمالية',
                      style: TextStyle(
                          color: Color(0xFFBC962B),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 24,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('السعر باليوم',
                                style: AppStyles.textStyles16_black),
                            CheckBoxButton(
                              text: '310 ريال',
                              fontSize: 12,
                              isChecked: true,
                              height: 32,
                              width: 72,
                            )
                          ],
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text('الماركة: فورد',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                              const SizedBox(height: 5),
                              Text('سنة الصنع: 2018',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 4.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Image.asset(
                          'assets/images/rate4.png',
                          width: 110,
                          height: 16,
                        ),
                        Text(':تقييم السيارة',
                            style: AppStyles.textStyles14_black),
                      ],
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
