// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:tutorial01/model/user_dob.dart';
import 'package:tutorial01/model/user_location.dart';
import 'package:tutorial01/model/user_name.dart';
import 'package:tutorial01/model/user_picture.dart';

class User {
  final String gender;
  final String email;
  final String phone;
  final String cell;
  final String nat;
  final UserName name;
  final UserDob dob;
  final UserLocation location;
  final UserPicture picture;

  User({
    required this.gender,
    required this.email,
    required this.phone,
    required this.cell,
    required this.nat,
    required this.name,
    required this.dob,
    required this.location,
    required this.picture,
  });

  factory User.formMap(Map<String, dynamic> e) {
    final name = UserName.formMap(e['name']);
    final dob = UserDob.formMap(e['dob']);
    final location = UserLocation.formMap(e['location']);
    final picture = UserPicture.formMap(e['picture']);
    return User(
      gender: e['gender'],
      email: e['email'],
      phone: e['phone'],
      cell: e['cell'],
      nat: e['nat'],
      name: name,
      dob: dob,
      location: location,
      picture: picture,
    );
  }

  String get fullName {
    return '${name.title} ${name.first} ${name.last}';
  }
}
