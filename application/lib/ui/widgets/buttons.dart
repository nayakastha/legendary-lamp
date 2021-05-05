import 'package:application/ui/utils/constants.dart';
import 'package:application/ui/utils/ui_scaling.dart';
import 'package:flutter/material.dart';

Widget initialButton(String buttonText, Function onTap) {
  return ElevatedButton(
    onPressed: onTap,
    style: ElevatedButton.styleFrom(
      primary: primaryColor,
    ),
    child: Text(
      buttonText,
      style: TextStyle(
        color: secondaryColor,
        fontSize: SizeConfig.blockSizeHorizontal * 4,
      ),
    ),
  );
}
