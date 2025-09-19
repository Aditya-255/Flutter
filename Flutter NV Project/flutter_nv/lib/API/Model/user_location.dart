class UserLocation {
  final String city;
  final String state;
  final String country;
  final String postcode;
  final LocationCoordinates coordinates;
  final LocationTimeZone timeZone;
  final LocationStreet street;

  UserLocation({
    required this.city,
    required this.state,
    required this.country,
    required this.postcode,
    required this.coordinates,
    required this.timeZone,
    required this.street,
  });
}

class LocationStreet {
  final int num;
  final String name;
  LocationStreet({required this.num, required this.name});
}

class LocationTimeZone {
  final String offset;
  final String description;
  LocationTimeZone({required this.offset, required this.description});
}

class LocationCoordinates {
  final String latitude;
  final String longitude;
  LocationCoordinates({required this.latitude, required this.longitude});
}
