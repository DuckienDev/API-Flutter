// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserPicture {
  final String large;
  final String medium;
  final String thumbnail;
  UserPicture({
    required this.large,
    required this.medium,
    required this.thumbnail,
  });

  factory UserPicture.formMap(Map<String, dynamic> json) {
    return UserPicture(
      large: json['large'],
      medium: json['medium'],
      thumbnail: json['thumbnail'],
    );
  }
}
