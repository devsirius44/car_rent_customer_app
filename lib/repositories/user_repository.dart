import 'package:customer_app/providers/user_api_provider.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class UserRepository {
  SharedPreferences _sharedPrefs;
  static UserRepository _userRepo;
  UserApiProvider _userApiProvider = UserApiProvider();

  initialize(SharedPreferences sharedPrefs) {
    this._sharedPrefs = sharedPrefs;
  }

  final String TOKEN_KEY = 'jwt_token';

  UserRepository();

  static UserRepository getInstance() {
    if (_userRepo == null) {
      _userRepo = new UserRepository();
    }
    return _userRepo;
  }

  Future<String> singup(
      {@required String phone, @required String password}) async {
    await Future.delayed(Duration(seconds: 1));
    return 'token';
  }

  Future<String> authenticate({
    @required String phone,
    @required String password,
  }) async {
    Map res =
        await _userApiProvider.authenticate(phone: phone, password: password);
    if (res['loginStatus'])
      return res['token'];
    else
      return null;
  }

  Future<void> recoveryPassword({@required phone}) async {
    await Future.delayed(Duration(seconds: 1));
  }

  Future<bool> verify(String otpCode, String token) async {
    print('step 2');
    bool res = await _userApiProvider.verify(optCode: otpCode, token: token);
    return res;
  }

  void persistToken(String token) {
    _sharedPrefs.setString(TOKEN_KEY, token);
  }

  String getToken() {
    return _sharedPrefs.getString(TOKEN_KEY);
  }

  void deleteToken() {
    _sharedPrefs.setString(TOKEN_KEY, '');
  }

  bool hasToken() {
    return (_sharedPrefs.getString(TOKEN_KEY) ?? '').isNotEmpty;
  }
}
