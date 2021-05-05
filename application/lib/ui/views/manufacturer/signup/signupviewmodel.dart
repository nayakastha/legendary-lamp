import 'package:stacked/stacked.dart';

class SignUpViewModel extends BaseViewModel {
  String _buttonText = "SIGNUP";
  String get buttonText => _buttonText;

  String _signUpDesc =
      "SignUp for being a authorised manufacturer and adding your information in the supply chain";
  String get signUpDesc => _signUpDesc;

  String _firstName;
  set saveFirstName(String value) {
    _firstName = value;
  }
}
