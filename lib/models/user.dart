
 class User {
  String profilePhotoUrl;
  String username;

  User({required this.profilePhotoUrl, required this.username});

  //results -> login -> username
  //results -> picture -> medium

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      profilePhotoUrl: map['results'][0]['picture']['medium'],
      username: map['results'][0]['login']['username'],
    );
  }
}
