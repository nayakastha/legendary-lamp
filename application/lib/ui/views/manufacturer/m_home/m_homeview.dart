//import 'package:application/ui/views/manufacturer/dashboard/dashboardview.dart';
import 'package:application/ui/views/manufacturer/m_home/m_homeviewmodel.dart';
//import 'package:application/ui/views/manufacturer/signup/loginview.dart';
import 'package:application/ui/views/manufacturer/signup/signupview.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ManufacturerHomeView extends StatefulWidget {
  const ManufacturerHomeView({Key key}) : super(key: key);

  @override
  _ManufacturerHomeViewState createState() => _ManufacturerHomeViewState();
}

class _ManufacturerHomeViewState extends State<ManufacturerHomeView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      builder: (context, model, child) {
        //return FutureBuilder(
        // future: model.isLoggedIn(),
        // builder: (BuildContext context, AsyncSnapshot snapshot) {
        //if (snapshot.data == 0)
        return SignUpView();
        /* else if (snapshot.data == 1)
              return LoginView();
            else
              return DashboardView(); */
        //  },
        // );
      },
      viewModelBuilder: () => ManufacturerHomeViewModel(),
    );
  }
}
