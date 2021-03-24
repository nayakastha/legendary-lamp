import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';

class SplashViewModel extends BaseViewModel {
  String _title = "LOADING ALL THE PRODUCTS";
  String get title => _title;

  Future<String> prefinit() async {
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    prefs.getKeys();

    return prefs.getString('usertype');
  }

  onAnimationCompleted() async {
    String _userType = await prefinit();
    if (_userType == 'Customer') {
      return '/homebuyer';
    } else if (_userType == 'Manufacturer') {
      return '/homeseller';
    } else {
      return '/choice';
    }
  }
}
