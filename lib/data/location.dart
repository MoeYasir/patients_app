import 'package:geolocator/geolocator.dart';

class Location {

  Future<Position> getCurrentPosition() async {
    return await Geolocator.getCurrentPosition();
  }

  Future<LocationPermission> askForLocationPermission() async {
    return await Geolocator.requestPermission();
  }

  Future<LocationPermission> getLocationPermissionState() async {
    return await Geolocator.checkPermission();
  }
}