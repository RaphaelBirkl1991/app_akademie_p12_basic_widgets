import 'package:flutter/material.dart';
import 'package:p12_basic_widgets/config/palette.dart';

class MapNotifier extends ChangeNotifier {
  double _markerLat = 0;
  double _markerLong = 0;
  Color _markerColor = Colors.black;

  double get markerLat => _markerLat;
  double get markerLong => _markerLong;
  Color get markerColor => _markerColor;

  void setMarkerColorYellow() {
    _markerColor = dutyYellow;
    notifyListeners();
    debugPrint("\tMarker col = yellow");
  }

  void setMarkerColorBlue() {
    _markerColor = dutyBlue;
    notifyListeners();
  }

  void updateMarkerCoordinates(double lat, double long) {
    _markerLat = lat;
    _markerLong = long;
    notifyListeners();
  }
}