import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User({required this.password, required this.username});
  final String username;
  final String password;

  User.fromJson(Map<String, dynamic> json)
      : username = json['username'],
        password = json['password'];

  Map<String, dynamic> toJson() => {
        'username': username,
        'password': password,
      };

  @override
  List<Object?> get props => [username, password];
}
