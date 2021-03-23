import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';

class ChoiceViewModel extends BaseViewModel {
  String sellerRoute = '/homeseller';
  String buyerRoute = '/homeseller';
  String _sellerName = 'Manufacturer';
  String _buyerName = 'Customer';

  String get buyerName => _buyerName;
  String get sellerName => _sellerName;
  Future<SharedPreferences> prefInit() async {
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    prefs.getKeys();
    return prefs;
  }

  chooseSeller(BuildContext context) async {
    SharedPreferences prefs = await prefInit();
    prefs.setString('usertype', _sellerName);
    Navigator.pushReplacementNamed(context, sellerRoute);
  }

  chooseBuyer(BuildContext context) async {
    SharedPreferences prefs = await prefInit();
    prefs.setString('usertype', _buyerName);
    Navigator.pushReplacementNamed(context, buyerRoute);
  }
}
