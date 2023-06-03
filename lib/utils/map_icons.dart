import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapIcons {
  static MapIcons mapIcons;
  static BitmapDescriptor carIcon;
  static BitmapDescriptor locationIcon;
  static getInstance() {
    if (mapIcons == null) {
      mapIcons = new MapIcons();
    }
    return mapIcons;
  }

  // initialize(BitmapDescriptor carIcon, BitmapDescriptor locationIcon) {
  //   _carIcon = carIcon;
  //   _locationIcon = locationIcon;
  // }
}
