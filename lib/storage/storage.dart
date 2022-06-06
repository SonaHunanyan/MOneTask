import 'dart:convert';

import 'package:mone_task/model/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Storage {
  late final SharedPreferences _preferences;

  Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  Future<void> saveUser({required User user}) async {
    final userJson = user.toJson();
    final stringedUser = jsonEncode(userJson);
    _preferences.setString(PreferencesKey.user, stringedUser);
  }

  User? getUser() {
    final res = _preferences.getString(PreferencesKey.user);
    if (res == null) {
      return null;
    }
    final userJson = jsonDecode(res);
    return User.fromJson(userJson);
  }
}

class PreferencesKey {
  static const user = 'user';
}
