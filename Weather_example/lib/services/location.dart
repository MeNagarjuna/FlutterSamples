import 'package:geolocator/geolocator.dart';

class Location {

  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async{
    try {
      Position mLocation = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

      latitude = mLocation.latitude;
      longitude = mLocation.longitude;

    } catch (e) {
      print(e);
    }
  }
}