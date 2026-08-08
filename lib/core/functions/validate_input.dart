import 'package:get/get.dart';
import 'package:mal3ab/core/enums/input_type.dart';
import 'package:mal3ab/core/functions/password_strength.dart';

String? validateInput(String value, int max, int min, InputType type) {
  if (value.isEmpty) {
    return "This field is required";
  }
  if (value.length > max) {
    return "Maximum $max characters.\nRemove ${value.length - max} character(s).";
  }

  if (value.length < min) {
    return "Minimum $min characters.\nAdd ${min - value.length} more character(s).";
  }

  switch (type) {
    case InputType.username:
      if (!GetUtils.isUsername(value)) {
        return "Invalid Username";
      }
      break;
    case InputType.email:
      if (!GetUtils.isEmail(value)) {
        return "Invalid Email";
      }
      break;
    case InputType.password:
      if (!PasswordStrength.isValid(value)) {
        return "Password doesn't meet all the requirements.";
      }
      break;
  }
  return null;
}
