import 'function_verification_criteria.dart';

class FieldsValidators {
  static String? userNameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'اسم المستخدم مطلوب';
    }

    if (value.length < 3) {
      return "يجب أن لا يقل اسم المستخدم عن ثلاثة أحرف";
    }

    if (!RegExp(VerificationCriteria.userNameValidator).hasMatch(value)) {
      return 'من فضلك أدخل اسم مستخدم صالح';
    }
    return null;
  }

  static String? fullNameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'الإسم الكامل مطلوب';
    }

    if (value.length < 3) {
      return 'يجب أن يتكون الاسم الكامل من ثلاثة أحرف على الأقل';
    }

    return null;
  }

  static String? phoneNumberValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'رقم الهاتف مطلوب';
    }

    if (value.length != 10) {
      return 'يجب أن لا يقل رقم الهاتف عن عشرة أحرف';
    }

    if (!RegExp(VerificationCriteria.phoneValidator).hasMatch(value)) {
      return 'من فضلك أدخل رقم هاتف صالح';
    }
    return null;
  }

  static String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'كلمة المرور مطلوبة';
    }

    if (value.length < 8) {
      return 'يجب أن تتكون كلمة المرور من ثمانية أحرف\nعلى الأقل';
    }

    if (!RegExp(VerificationCriteria.passwordValidator).hasMatch(value)) {
      return 'الرجاء اختيار كلمة مرور قوية جرّب مزيجًا\nمن الأسماء والرموز';
    }
    return null;
  }

  static String? emptyValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'الحقل مطلوب';
    }

    return null;
  }
}
