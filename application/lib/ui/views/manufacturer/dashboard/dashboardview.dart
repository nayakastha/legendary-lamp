import 'package:application/ui/utils/ui_scaling.dart';
import 'package:application/ui/views/manufacturer/dashboard/dashboardviewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class DashboardView extends StatefulWidget {
  @override
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ViewModelBuilder.reactive(
        builder: (context, model, child) {
          return Scaffold();
        },
        viewModelBuilder: () => DashboardViewModel());
  }
}
