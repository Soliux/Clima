import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';


class Location {
  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print("We was unable to get permission to get the users gps location");
    }
  }

}