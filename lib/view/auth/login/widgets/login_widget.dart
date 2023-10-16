import 'package:captain_egypt/view/auth/login/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Image.asset(
                "assets/images/logo.png",
              ),
            ),
            // const SizedBox(
            //   height: 50,
            // ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "إنشاء حساب سائق",
                  style: AppTheme.themeArabic.textTheme.titleLarge,
                ),
                Text(
                  "الاسم الكامل",
                  style: AppTheme.themeArabic.textTheme.titleSmall,
                ),
                CustomTextFormField(
                  hintText: "ادخل اسمك الكامل",
                  borderColor: AppColors.lightBlue,
                  radius: 8,
                  height: 50,
                ),
                Text(
                  "رقم الهاتف",
                  style: AppTheme.themeArabic.textTheme.titleSmall,
                ),
                CustomTextFormField(
                  hintText: "99999 999 02+",
                  borderColor: AppColors.lightBlue,
                  radius: 8,
                  height: 50,
                ),
              ],
            ),

            // const SizedBox(
            //   height: 80,
            // ),
            Column(
              children: [
                CustomButton(
                  onPressed: () {},
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(8),
                  width: double.infinity,
                  child: const Text(
                    "التالي",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "لديك حساب بالفعل؟",
                      style: AppTheme.themeArabic.textTheme.bodyMedium,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "تسجيل الدخول",
                        style: TextStyle(
                          color: AppColors.orange,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
