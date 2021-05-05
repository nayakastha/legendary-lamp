import 'package:application/ui/utils/constants.dart';
import 'package:application/ui/utils/ui_scaling.dart';
import 'package:flutter/material.dart';

Widget initialButton(String buttonText, Function onTap) {
  return ElevatedButton(
    onPressed: onTap,
    style: ElevatedButton.styleFrom(
      primary: primaryColor,
      shape: new RoundedRectangleBorder(
        borderRadius:
            new BorderRadius.circular(SizeConfig.blockSizeHorizontal * 6.25),
      ),
    ),
    child: Text(
      buttonText,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: secondaryColor,
        fontSize: SizeConfig.blockSizeHorizontal * 5,
      ),
    ),
  );
}
