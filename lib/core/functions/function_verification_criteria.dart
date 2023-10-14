class VerificationCriteria {
  static const userNameValidator = r'''^[a-zA-Z0-9_-]{3,16}$''';
  static const passwordValidator =
      r'''^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$''';
  static const phoneValidator =
      r'''^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$^''';
}
