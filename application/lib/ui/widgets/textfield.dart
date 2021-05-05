import 'package:application/ui/utils/constants.dart';
import 'package:application/ui/views/manufacturer/signup/signupviewmodel.dart';
import 'package:flutter/material.dart';

Widget textField(
  TextEditingController editingController,
  SignUpViewModel model,
  String Function(String) validator,
  String label,
  String hint,
  IconData icon,
  //Function onSave,
) {
  return TextFormField(
    textInputAction: TextInputAction.next,
    textCapitalization: TextCapitalization.words,
    controller: editingController,
    validator: (value) => validator(value),
    textAlign: TextAlign.left,
    style: const TextStyle(color: secondaryColor),
    decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(20.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: secondaryColor),
        borderRadius: BorderRadius.circular(20.0),
      ),
      prefixIcon: Icon(icon, color: Colors.white),
      labelText: label,
      labelStyle: const TextStyle(color: Colors.white),
      alignLabelWithHint: true,
      hintText: hint,
      hintStyle: const TextStyle(color: Colors.grey),
    ),
    // onSaved: onSave,
  );
}
