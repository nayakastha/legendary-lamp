import 'package:application/ui/views/startup/splashviewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        builder: (context, model, child) {
          return Scaffold(
            body: Center(
              child: Text(model.title),
            ),
          );
        },
        viewModelBuilder: () => SplashViewModel());
  }
}
