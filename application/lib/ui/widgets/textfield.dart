import 'package:application/ui/utils/constants.dart';
import 'package:application/ui/utils/ui_scaling.dart';
import 'package:application/ui/views/manufacturer/signup/signupviewmodel.dart';
import 'package:flutter/material.dart';

Widget textField(
  TextEditingController editingController,
  SignUpViewModel model,
  String Function(String) validator,
  String label,
  String hint,
  bool obsure,
  IconData icon,
  Function onSave,
) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical),
    child: TextFormField(
      textInputAction: TextInputAction.next,
      textCapitalization: TextCapitalization.words,
      controller: editingController,
      validator: (value) => validator(value),
      textAlign: TextAlign.left,
      style: const TextStyle(color: bgColor),
      obscureText: obsure,
      obscuringCharacter: '*',
      enableSuggestions: true,
      decoration: InputDecoration(
        border: new OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(SizeConfig.blockSizeHorizontal * 7.5),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: secondaryColor),
          borderRadius: BorderRadius.circular(20.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: secondaryColor),
          borderRadius: BorderRadius.circular(20.0),
        ),
        prefixIcon: Icon(icon, color: bgColor),
        labelText: label,
        labelStyle: const TextStyle(color: primaryColor),
        alignLabelWithHint: true,
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.grey),
      ),
      onSaved: onSave,
    ),
  );
}
