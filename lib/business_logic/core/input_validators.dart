import 'package:designly/business_logic/constants/app_strings.dart';

String? validateEmail(String? input) {
  if (input != null && input.isNotEmpty) {
    if (RegExp(emailRegex).hasMatch(input)) {
      return null;
    } else {
      return pleaseInputValidEmailText;
    }
  }
  return pleaseEnterField;
}

String? validateName(String? input) {
  if (input != null && input.isNotEmpty) {
    return null;
  } else {
    return pleaseEnterNameText;
  }
}

String? validatePhone(String? input) {
  if (input != null && input.isNotEmpty) {
    if (RegExp(kenyanPhoneRegExp).hasMatch(input)) {
      return null;
    } else {
      return pleaseEnterValidPhoneNumberText;
    }
  }
  return pleaseEnterField;
}
