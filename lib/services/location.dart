import 'package:geolocator/geolocator.dart';

const apiKey = '3d5c41b4ffde62d8346b646dc46ab811';

class Location {
  double latitude = 0;
  double longitude = 0;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);

      latitude = position.latitude;
      longitude = position.longitude;
      //     print("Latitude in locat.dart$latitude");
    } catch (e) {
      print(e);
    }
  }
}
