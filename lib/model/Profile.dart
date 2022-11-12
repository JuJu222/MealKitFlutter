class Profile {
  String? picture;
  String? name;
  String? email;
  String? password;

  Profile(
      {required this.picture,
      required this.name,
      required this.email,
      required this.password});
}

List<Profile> listProfile = [
  Profile(
      picture: 'kenny.jpg',
      name: 'Kenny Jinhiro',
      email: 'kenny@gmail.com',
      password: 'password')
];
