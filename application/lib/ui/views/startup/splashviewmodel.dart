import 'package:application/ui/views/home/homeview.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SplashViewModel extends BaseViewModel {
  String _title = "LOADING ALL THE PRODUCTS";
  String get title => _title;

  void onAnimationCompleted(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeView()),
    );
  }
}
