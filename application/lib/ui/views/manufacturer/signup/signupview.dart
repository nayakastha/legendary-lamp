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
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        builder: (context, model, child) {
          return Scaffold(
            backgroundColor: bgColor.withOpacity(0.2),
            bottomNavigationBar: Container(
              height: SizeConfig.screenHeight * 0.1,
              child: Center(
                child: initialButton(model.buttonText, () {}),
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal * 4),
                child: Form(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.125,
                      ),
                      Text(
                        model.buttonText,
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: SizeConfig.blockSizeHorizontal * 7.25,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.blockSizeHorizontal * 20,
                          vertical: SizeConfig.blockSizeHorizontal * 5,
                        ),
                        child: Text(
                          model.signUpDesc,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: SizeConfig.blockSizeHorizontal * 4.25,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.0625,
                      ),
                      textField(
                        _firstNameController,
                        model,
                        Validator.validateFirstName,
                        "First Name",
                        "John",
                        false,
                        Icons.person,
                      ),
                      textField(
                        _lastNameController,
                        model,
                        Validator.validateLastName,
                        "Last Name",
                        "Doe",
                        false,
                        Icons.person,
                      ),
                      textField(
                        _emailController,
                        model,
                        Validator.validateEmail,
                        "Email",
                        "foo@bar.com",
                        false,
                        Icons.email,
                      ),
                      textField(
                        _passwordController,
                        model,
                        Validator.validatePassword,
                        "Password",
                        "********",
                        true,
                        Icons.lock_outlined,
                      ),
                      textField(
                        _confirmPasswordController,
                        model,
                        Validator.validatePassword,
                        "Confirm Password",
                        "********",
                        true,
                        Icons.lock_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        viewModelBuilder: () => SignUpViewModel());
  }
}
