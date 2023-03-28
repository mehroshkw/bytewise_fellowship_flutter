import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import '../views/fav.dart';

class LoginProvider extends ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;
  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  void login(BuildContext context,String email, String pass) async {
    try {
      Response response =
          await post(Uri.parse("https://reqres.in/api/login"), body: {
        'email': email,
        'password': pass,
      });
      if (response.statusCode == 200) {
        print("Login Successful");
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Favourite()),
        );

        setLoading(false);
      } else {
        print("Login Successful");
        setLoading(false);
      }
    } catch (e) {
      print(e.toString());
      setLoading(false);
    }
  }
}
