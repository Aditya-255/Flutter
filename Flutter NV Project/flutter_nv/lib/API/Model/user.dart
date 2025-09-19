import 'package:flutter_nv/API/Model/user_dob.dart';
import 'package:flutter_nv/API/Model/user_location.dart';

class User {
  final String gender;
  final String email;
  final String phone;
  final String cell;
  final String nat;
  final UserDOB dob;
  final UserLocation location;
  User({
    required this.gender,
    required this.email,
    required this.phone,
    required this.cell,
    required this.nat,
    required this.dob,
    required this.location,
  });
  factory User.fromMap(Map<String,dynamic> e){
    final date = e['dob']['date'];
      final dob = UserDOB(age: e['dob']['age'], date: DateTime.parse(date));
      final coordinates = LocationCoordinates(
        latitude: e['location']['coordinates']['latitude'],
        longitude: e['location']['coordinates']['longitude'],
      );
      final street = LocationStreet(
        num: e['location']['street']['num'],
        name: e['location']['street']['name'],
      );
      final timezone = LocationTimeZone(
        offset: e['location']['timezone']['offset'],
        description: e['location']['timezone']['description'],
      );
      final location = UserLocation(
        city: e['location']['city'],
        state: e['location']['state'],
        country: e['location']['country'],
        postcode: e['location']['postcode'].toString(),
        coordinates: coordinates,
        timeZone: timezone,
        street: street,
      );
      return User(
        cell: e['cell'],
        email: e['email'],
        gender: e['gender'],
        nat: e['nat'],
        phone: e['phone'],
        dob: dob,
        location: location,
      );
  }
}
