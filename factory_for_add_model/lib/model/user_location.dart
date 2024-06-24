// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserLocation {
  final String city;
  final String state;
  final String country;
  final String postcode;
  final LocationStreet street;
  final LocationCoordinate coordinates;
  final LocationTimezoneCoordinate timezone;

  UserLocation({
    required this.city,
    required this.state,
    required this.country,
    required this.postcode,
    required this.street,
    required this.coordinates,
    required this.timezone,
  });

  factory UserLocation.formMap(Map<String, dynamic> json) {
    final street = LocationStreet.formMap(json['street']);

    final coordinates = LocationCoordinate.formMap(json['coordinates']);

    final timezone = LocationTimezoneCoordinate.formMap(json['timezone']);

    return UserLocation(
      city: json['city'],
      state: json['state'],
      country: json['country'],
      postcode: json['postcode'].toString(),
      street: street,
      coordinates: coordinates,
      timezone: timezone,
    );
  }
}

class LocationStreet {
  final int number;
  final String name;
  LocationStreet({
    required this.number,
    required this.name,
  });
  factory LocationStreet.formMap(Map<String, dynamic> json) {
    return LocationStreet(
      number: json['number'],
      name: json['name'],
    );
  }
}

class LocationCoordinate {
  final String latitude;
  final String longitude;
  LocationCoordinate({
    required this.latitude,
    required this.longitude,
  });
  factory LocationCoordinate.formMap(Map<String, dynamic> json) {
    return LocationCoordinate(
      latitude: json['latitude'],
      longitude: json['longitude'],
    );
  }
}

class LocationTimezoneCoordinate {
  final String offset;
  final String description;
  LocationTimezoneCoordinate({
    required this.offset,
    required this.description,
  });
  factory LocationTimezoneCoordinate.formMap(Map<String, dynamic> json) {
    return LocationTimezoneCoordinate(
      offset: json['offset'],
      description: json['description'],
    );
  }
}
