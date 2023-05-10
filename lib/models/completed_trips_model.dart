import 'package:google_maps_flutter/google_maps_flutter.dart';

class CompletedTrip {
  final String date;
  final String startLocationName;
  final String endLocationName;
  final LatLng startLocation;
  final LatLng endLocation;
  final String distance;
  final String duration;

  CompletedTrip({
    required this.date,
    required this.startLocationName,
    required this.endLocationName,
    required this.startLocation,
    required this.endLocation,
    required this.distance,
    required this.duration,
  });
}
