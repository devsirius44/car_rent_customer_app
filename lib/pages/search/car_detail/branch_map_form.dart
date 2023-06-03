import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// import 'models/result.dart';

class BranchMap extends StatefulWidget {
  BranchMap();

  @override
  State<BranchMap> createState() {
    return _BranchMap();
  }
}

class _BranchMap extends State<BranchMap> {
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
      icon: customIcon,
      markerId: MarkerId('ChIJ9Sto4ahZwokRXpWiQYiOOOo'),
      position: LatLng(40.7477172, -73.98653019999999),
      infoWindow: InfoWindow(
          title: 'Grace Street Coffee & Desserts',
          snippet: '17 W 32nd St, New York'),
      onTap: () {},
    )
  ];

  @override
  void initState() {
    super.initState();
    radius = 3000;
    keyword = "clinic";

    // make sure to initialize before map loading
    BitmapDescriptor.fromAssetImage(ImageConfiguration(size: Size(12, 12)),
            'assets/images/location.png')
        .then((d) {
      setState(() {
        customIcon = d;
      });
    });
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
