import 'package:application/ui/utils/constants.dart';
import 'package:application/ui/utils/ui_scaling.dart';
import 'package:application/ui/utils/validator.dart';
import 'package:application/ui/views/manufacturer/signup/signupviewmodel.dart';
import 'package:application/ui/widgets/buttons.dart';
import 'package:application/ui/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SignUpView extends StatefulWidget {
  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        builder: (context, model, child) {
          return Scaffold(
            backgroundColor: bgColor,
            bottomNavigationBar: Container(
              height: SizeConfig.screenHeight * 0.1,
              child: Center(
                child: initialButton(model.buttonText, () {}),
              ),
            ),
            body: Padding(
              padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal * 4),
              child: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      model.buttonText,
                      style: TextStyle(
                        fontSize: SizeConfig.blockSizeHorizontal * 7.25,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.blockSizeHorizontal * 20),
                      child: Text(
                        model.signUpDesc,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: SizeConfig.blockSizeHorizontal * 4.25,
                        ),
                      ),
                    ),
                    textField(
                      _firstNameController,
                      model,
                      Validator.validateFirstName,
                      "First Name",
                      "John",
                      Icons.person,
                    )
                  ],
                ),
              ),
            ),
          );
        },
        viewModelBuilder: () => SignUpViewModel());
  }
}
