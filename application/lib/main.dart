import 'package:application/ui/views/choice/choiceview.dart';
import 'package:application/ui/views/customer/c_home/c_homeview.dart';
import 'package:application/ui/views/manufacturer/m_home/m_homeview.dart';

import 'package:application/ui/views/startup/splashview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Raleway',
          primaryColor: Color.fromRGBO(254, 219, 208, 1),
          splashColor: Color.fromRGBO(68, 44, 46, 1),
          backgroundColor: Color.fromRGBO(255, 234, 230, 1)),
      routes: {
        '/choice': (context) => ChoiceView(),
        '/homebuyer': (context) => CustomerHomeView(),
        '/homeseller': (context) => ManufacturerHomeView()
      },
      home: SplashView(),
    );
  }
}
