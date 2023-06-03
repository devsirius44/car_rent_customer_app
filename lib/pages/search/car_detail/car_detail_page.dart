import 'package:customer_app/pages/home/nav_menu.dart';
import 'package:customer_app/pages/search/car_detail/index.dart';
import 'package:customer_app/styles/styles.dart';
import 'package:customer_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../car_rent_success.dart';
import '../terms_conditions_page.dart';

class CarDetailPage extends StatelessWidget {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

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
            child: SingleChildScrollView(
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
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        const SizedBox(height: 25),
                        Text(
                          ' الماركة فورد :',
                          style: AppStyles.textStyle20_black,
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              'اللون:  ابيض',
                              style: AppStyles.textStyles14,
                            ),
                            SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              'اللون:  ابيض',
                              style: AppStyles.textStyles14,
                            ),
                            SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              'اللون:  ابيض',
                              style: AppStyles.textStyles14,
                            ),
                            SizedBox(
                              width: 4.0,
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 30, horizontal: 20),
                          child: CarouselWithIndicator(),
                        ),
                        //carousel part
                        Row(
                          children: <Widget>[
                            Image.asset(
                              'assets/images/avis_mark.jpg',
                              width: 130,
                              height: 100,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Text('إفاس لتأجير السيارات',
                                      style: AppStyles.textStyle20),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      CheckBoxButton(
                                        text: '310 ريال',
                                        fontSize: 12,
                                        isChecked: true,
                                        height: 24,
                                        width: 72,
                                      ),
                                      SizedBox(width: 8.0),
                                      Text('السعر باليوم',
                                          style: AppStyles.textStyle18_black)
                                    ],
                                  ),
                                  Text(
                                    'التقييم',
                                    style: AppStyles.textStyles14,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Column(
                          // border:
                          //     TableBorder.all(width: 1.0, color: Colors.grey),
                          children: [
                            CustomTableRow(),
                            CustomTableRow(),
                            CustomTableRow(),
                            CustomTableRow(),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 120,
                          width: MediaQuery.of(context).size.width,
                          child: GoogleMap(
                            onMapCreated: _onMapCreated,
                            initialCameraPosition: CameraPosition(
                              target: _center,
                              zoom: 11.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: DateBoxButton(
                                fontSize: 12,
                                text: 'إلى :',
                              ),
                            ),
                            SizedBox(width: 12),
                            Expanded(
                              flex: 2,
                              child: DateBoxButton(
                                fontSize: 12,
                                text: 'من :',
                              ),
                            ),
                            SizedBox(width: 12),
                            Text(
                              'تاريخ إستلام السيارة :',
                              style: AppStyles.textStyles14_black,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            CheckBoxButton(
                              height: 36,
                              isChecked: false,
                              text: 'دفع نقدي',
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            CheckBoxButton(
                              height: 36,
                              isChecked: true,
                              text: 'حساب بنكي',
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text('طرق الدفع:',
                                style: AppStyles.textStyles14_black)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              'التأمين وبنود التأجير',
                              style: AppStyles.textStyles14_black,
                            )
                          ],
                        ),
                        Container(
                          color: Colors.grey[300],
                          child: Column(
                            children: <Widget>[
                              TextControlled(
                                text:
                                    'التأمين الشامل - تكلفة التأمين / يوم - 20.00 ريال',
                                textStyle: AppStyles.textStyle12_black,
                              ),
                              TextControlled(
                                text:
                                    'الكيلومترات المسموحة: 500 كيلو متر / اليوم',
                                textStyle: AppStyles.textStyle12_black,
                              ),
                              TextControlled(
                                text:
                                    'التأمين الشامل - تكلفة التأمين / يوم - 20.00 ريال',
                                textStyle: AppStyles.textStyle12_black,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        TextControlled(
                          text: 'اوافق على شروط و أحكام التأجير',
                          textStyle: AppStyles.textStyles14_black,
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => TermsNConditionsPage()));
                              },
                              icon: Container(
                                color: Color(0xFFBC962B),
                                padding: EdgeInsets.all(6.0),
                                child: Image.asset(
                                  'assets/images/eye.png',
                                  width: 28,
                                  height: 28,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Container(
                                color: Color(0xFFBC962B),
                                padding: EdgeInsets.all(6.0),
                                child: Image.asset(
                                  'assets/images/check.png',
                                  width: 28,
                                  height: 28,
                                ),
                              ),
                            ),
                          ],
                        ),
                        CheckBoxButton(
                          text: 'Click ',
                          fontSize: 18,
                          isChecked: true,
                          width: MediaQuery.of(context).size.width,
                          onPressed: () {
                            print('======>');
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => CarRendSuccessPage()));
                          },
                        ),
                        SizedBox(
                          height: 12,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
