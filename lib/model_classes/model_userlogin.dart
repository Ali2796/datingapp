class ModelUserLogin {

  late String _userName;
  late String _password;

  String get userName => _userName;

  set userName(String value) {
    _userName = value;
  }
  String get password => _password;

  set password(String value) {
    _password = value;
  }

  ModelUserLogin({required String userName, required String password}):_userName = userName, _password = password;

  static const String userNameKey = 'userName';
  static const String passwordKey = 'password';

  Map<String, dynamic> toMap() {
    return {
      userNameKey: _userName,
      passwordKey: _password
    };
  }


  factory ModelUserLogin.fromMap(Map<String, dynamic> map) {
  return ModelUserLogin(
 userName:map[userNameKey],
  password: map[passwordKey]);
  }
}