class AppRegex {
  /// Checks if the provided string is a valid email address.
  static bool isEmailValid(String email) {
    return RegExp(
      r'^[a-zA-Z0-9._%+\-]+@[a-zA-Z0-9.\-]+\.[a-zA-Z]{2,}$',
    ).hasMatch(email);
  }

  /// Checks if the password is at least 8 characters long.
  static bool hasMinLength(String password) {
    return password.length >= 8;
  }

  /// Checks if the password has at least one lowercase letter.
  static bool hasLowerCase(String password) {
    return RegExp(r'(?=.*[a-z])').hasMatch(password);
  }

  /// Checks if the password has at least one uppercase letter.
  static bool hasUpperCase(String password) {
    return RegExp(r'(?=.*[A-Z])').hasMatch(password);
  }

  /// Checks if the password has at least one number.
  static bool hasNumber(String password) {
    return RegExp(r'^(?=.*?[0-9])').hasMatch(password);
  }

  /// Checks if the password has at least one special character.
  static bool hasSpecialCharacter(String password) {
    return RegExp(r'^(?=.*?[#?!@$%^&*-])').hasMatch(password);
  }

  /// Checks if the password meets strict criteria:
  /// At least 8 characters, 1 uppercase, 1 lowercase, 1 number, and 1 special character.
  static bool isStrongPasswordValid(String password) {
    return RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&#])[A-Za-z\d@$!%*?&#]{8,}$',
    ).hasMatch(password);
  }

  /// Checks if the provided string is a valid phone number.
  /// Allows an optional leading '+' and requires between 7 and 15 digits.
  static bool isPhoneNumberValid(String phoneNumber) {
    return RegExp(r'^\+?[0-9]{7,15}$').hasMatch(phoneNumber);
  }

  /// Checks if the provided string contains only numeric digits.
  static bool isOnlyNumbers(String input) {
    return RegExp(r'^[0-9]+$').hasMatch(input);
  }

  /// Checks if the provided string contains only alphabetical characters.
  static bool isOnlyLetters(String input) {
    return RegExp(r'^[a-zA-Z]+$').hasMatch(input);
  }

  /// Checks if the provided string is a valid URL.
  static bool isUrlValid(String url) {
    return RegExp(
      r'^(http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$',
    ).hasMatch(url);
  }
}
