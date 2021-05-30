import 'package:stacked/stacked.dart';

class SignUpViewModel extends BaseViewModel {
  String _buttonText = "SIGN UP";
  String get buttonText => _buttonText;

  String _signUpDesc =
      "SignUp for being a authorised manufacturer and adding your information in the supply chain";
  String get signUpDesc => _signUpDesc;

  String firstName;
  String lastName;
  String email;
  String password;
}
