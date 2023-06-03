import 'dart:async';
import 'dart:ui';

import 'package:customer_app/utils/map_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'car_info_window.dart';

// import 'models/result.dart';

class SearchMapPage extends StatefulWidget {
  SearchMapPage();

  @override
  State<SearchMapPage> createState() {
    return _SearchMapPage();
  }
}

class _SearchMapPage extends State<SearchMapPage> {
  List<Marker> markers = <Marker>[];
  Error error;
  // List<Result> places;
  bool searching = true;
  String keyword;
  int radius;

  static double latitude = 40.7484405;
  static double longitude = -73.9878531;
  static BitmapDescriptor customIcon;

  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _myLocation = CameraPosition(
      target: LatLng(latitude, longitude), zoom: 12, bearing: 15.0, tilt: 75.0);

  List<Marker> _markers = <Marker>[
    Marker(
      // icon: Image.asset('assets/images/location.png', width: 20, height: 20,),
      icon: MapIcons.carIcon,
      markerId: MarkerId('ChIJ9Sto4ahZwokRXpWiQYiOOOo'),
      position: LatLng(40.7477172, -73.98653019999999),
      // infoWindow: InfoWindow(
      //     title: 'Grace Street Coffee & Desserts',
      //     snippet: '17 W 32nd St, New York'),
      onTap: () {},
    ),
    Marker(
      // icon: Image.asset('assets/images/location.png', width: 20, height: 20,),
      icon: MapIcons.carIcon,
      markerId: MarkerId('ChIJ9Sto4ahZwokRXpWiQYiOOOo'),
      position: LatLng(40.72, -73.99),
      // infoWindow: InfoWindow(
      //     title: 'Grace Street Coffee & Desserts',
      //     snippet: '17 W 32nd St, New York'),
      onTap: () {},
    ),
    Marker(
      // icon: Image.asset('assets/images/location.png', width: 20, height: 20,),
      icon: MapIcons.carIcon,
      markerId: MarkerId('ChIJ9Sto4ahZwokRXpWiQYiOOOo'),
      position: LatLng(40.76, -73.66),
      // infoWindow: InfoWindow(
      //     title: 'Grace Street Coffee & Desserts',
      //     snippet: '17 W 32nd St, New York'),
      onTap: () {},
    ),
    Marker(
      // icon: Image.asset('assets/images/location.png', width: 20, height: 20,),
      icon: MapIcons.carIcon,
      markerId: MarkerId('ChIJ9Sto4ahZwokRXpWiQYiOOOo'),
      position: LatLng(40.78, -74.02),
      // infoWindow: InfoWindow(
      //     title: 'Grace Street Coffee & Desserts',
      //     snippet: '17 W 32nd St, New York'),
      onTap: () {},
    ),
  ];

  @override
  void initState() {
    super.initState();
    radius = 3000;
    keyword = "clinic";
    customIcon = MapIcons.carIcon;
    // make sure to initialize before map loading
    // BitmapDescriptor.fromAssetImage(ImageConfiguration(size: Size(24, 24)),
    //         'assets/images/location_car.png')
    //     .then((d) {
    //   setState(() {
    //     customIcon = d;
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Stack(
        children: <Widget>[
          GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: _myLocation,
            onMapCreated: (GoogleMapController controller) {
              _setStyle(controller);
              _controller.complete(controller);
            },
            markers: Set<Marker>.of(_markers),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              Container(),
            ],
          ),
          Container(margin: EdgeInsets.only(top: 30), child: CarInfoWindow()),
        ],
      ),
    );
  }

  void _setStyle(GoogleMapController controller) async {
    // String value = await DefaultAssetBundle.of(context)
    //     .loadString('assets/maps_style.json');
    // controller.setMapStyle(value);
  }
}
