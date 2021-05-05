import 'package:application/ui/utils/constants.dart';
import 'package:application/ui/utils/ui_scaling.dart';
import 'package:application/ui/views/startup/splashviewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lottie/lottie.dart';
import 'package:stacked/stacked.dart';

class SplashView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final animationController = useAnimationController();
    return ViewModelBuilder.reactive(
        builder: (context, model, child) {
          return Scaffold(
            backgroundColor: bgColor,
            body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset("assets/animations/splash.json",
                    controller: animationController, onLoaded: (composition) {
                  animationController.addStatusListener((status) async {
                    var route = await model.onAnimationCompleted();
                    if (status == AnimationStatus.completed) {
                      Navigator.pushReplacementNamed(context, route);
                    }
                  });
                  animationController
                    ..duration = composition.duration
                    ..forward();
                }),
                SizedBox(
                    child: Center(
                  child: Text(model.title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: secondaryColor,
                          fontSize: SizeConfig.blockSizeHorizontal * 6.25)),
                ))
              ],
            )),
          );
        },
        viewModelBuilder: () => SplashViewModel());
  }
}
