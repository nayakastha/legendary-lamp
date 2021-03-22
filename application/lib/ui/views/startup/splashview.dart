import 'package:application/ui/constants.dart';
import 'package:application/ui/views/startup/splashviewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lottie/lottie.dart';
import 'package:stacked/stacked.dart';

class SplashView extends HookWidget {
  @override
  Widget build(BuildContext context) {
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
                  animationController.addStatusListener((status) {
                    if (status == AnimationStatus.completed) {
                      model.onAnimationCompleted(context);
                    }
                  });
                  animationController
                    ..duration = composition.duration
                    ..forward();
                }),
                SizedBox(
                    child: Center(
                  child: Text(model.title,
                      style: TextStyle(color: secondaryColor, fontSize: 24)),
                ))
              ],
            )),
          );
        },
        viewModelBuilder: () => SplashViewModel());
  }
}
