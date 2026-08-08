class PasswordStrength {
  static bool hasMinLength(String password) => password.length >= 10;

  static bool hasUppercase(String password) =>
      RegExp(r'[A-Z]').hasMatch(password);

  static bool hasNumber(String password) => RegExp(r'\d').hasMatch(password);

  static bool hasSpecial(String password) =>
      RegExp(r'[!@#\$%^&*(),.?":{}|<>]').hasMatch(password);

  static bool hasLowercase(String password) =>
      RegExp(r'[a-z]').hasMatch(password);
  static int level(String password) {
    final score = PasswordStrength.score(password);

    if (score <= 1) return 1;
    if (score <= 3) return 2;
    return 3;
  }

  static String levelText(String password) {
    final score = PasswordStrength.score(password);

    if (score <= 1) return "Weak Password";
    if (score <= 4) return "Medium Password";
    return "Strong Password";
  }

  static int score(String password) {
    int score = 0;

    if (hasMinLength(password)) score++;
    if (hasUppercase(password)) score++;
    if (hasNumber(password)) score++;
    if (hasSpecial(password)) score++;
    if (hasLowercase(password)) score++;

    return score;
  }

  static bool isValid(String password) {
    return hasMinLength(password) &&
        hasLowercase(password) &&
        hasNumber(password) &&
        hasSpecial(password) &&
        hasUppercase(password);
  }
}
