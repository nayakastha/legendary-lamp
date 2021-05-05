import 'package:application/ui/constants.dart';
import 'package:application/ui/ui_scaling.dart';
import 'package:application/ui/views/choice/choiceviewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ChoiceView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        builder: (context, model, child) {
          return Scaffold(
            backgroundColor: bgColor,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: SizeConfig.blockSizeVertical),
                    alignment: Alignment.center,
                    child: Text(
                      "Welcome! How do you want to join us?",
                      style: TextStyle(
                          color: secondaryColor,
                          fontSize: SizeConfig.blockSizeHorizontal * 5),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      choiceCard(
                          context, model.sellerName, "assets/images/shop.png",
                          () {
                        model.chooseSeller(context);
                      }),
                      choiceCard(
                          context, model.buyerName, "assets/images/cart.png",
                          () {
                        model.chooseBuyer(context);
                      })
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        viewModelBuilder: () => ChoiceViewModel());
  }
}

Widget choiceCard(
    BuildContext context, String name, String asset, Function ontap) {
  return InkWell(
    splashColor: secondaryColor,
    onTap: ontap,
    splashFactory: InkRipple.splashFactory,
    child: Stack(
      fit: StackFit.loose,
      children: [
        Container(
          color: bgColor,
          height: SizeConfig.blockSizeHorizontal * 35,
          width: SizeConfig.blockSizeHorizontal * 35,
          child: Card(
            color: Colors.white.withOpacity(0.85),
            elevation: 20,
            shadowColor: primaryColor.withOpacity(0.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(
                color: secondaryColor.withOpacity(0.2),
                width: 1,
              ),
            ),
          ),
        ),
        Positioned(
          left: SizeConfig.blockSizeHorizontal * 7,
          top: SizeConfig.blockSizeHorizontal * 7,
          child: Image.asset(
            asset,
            semanticLabel: name,
            height: SizeConfig.blockSizeHorizontal * 20,
            width: SizeConfig.blockSizeHorizontal * 20,
            colorBlendMode: BlendMode.dstIn,
            alignment: Alignment.center,
            errorBuilder: (BuildContext context, Object exception,
                    StackTrace stackTrace) =>
                Text('Failed to load image'),
          ),
        )
      ],
    ),
  );
}
