class UserObject {
  final String username;
  final String email;
  final String rank;
  final int lv;
  UserObject(
      {required this.username,
      required this.email,
      required this.rank,
      required this.lv});
  Map<String, dynamic> toJson() => {
        'username': username,
        'email': email,
        'rank': rank,
        'lv': lv,
      };
  static UserObject fromJson(Map<String, dynamic> json) => UserObject(
      username: json['username'],
      email: json['email'],
      lv: json['lv'],
      rank: json['rank']);
}
