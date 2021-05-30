class Validator {
  static String validateFirstName(String value) {
    if (value.isEmpty) {
      return 'Firstname must not be left blank.';
    }
    return null;
  }

  static String validateLastName(String value) {
    if (value.isEmpty) {
      return 'Lastname must not be left blank.';
    }
    return null;
  }

  static String validateEmail(String email) {
    RegExp regExp = new RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$",
        multiLine: false);
    if (!regExp.hasMatch(email)) {
      return 'E-mail Address must be a valid email address.';
    }
    return null;
  }

  static String validatePassword(String password) {
    if (password.isEmpty) {
      return "Password must not be left blank";
    }
    const String pattern =
        r'^(?=.*?[A-Z])(?=.*?[0-9])(?=.*?[!@#\$&*%^~.]).{8,}$';
    final RegExp regExp = RegExp(pattern);
    if (!regExp.hasMatch(password)) {
      return "Invalid Password";
    }
    return null;
  }
}
