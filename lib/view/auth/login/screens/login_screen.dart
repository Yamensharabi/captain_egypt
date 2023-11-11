import 'package:captain_egypt/view/auth/login/screens/acount_setting.dart';
import 'package:captain_egypt/view/auth/login/screens/myorder_screen.dart';
import 'package:flutter/material.dart';
import 'package:captain_egypt/core/constants/app_colors.dart';
import 'package:captain_egypt/core/constants/app_themes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            textDirection: TextDirection.rtl, // Right-to-left alignment
            children: [
              SizedBox(height: 40),
              Center(
                child: Image.asset("assets/images/logo.png"),
              ),
              SizedBox(height: 80),

              // "تسجيل دخول" Text
              Text(
                "تسجيل دخول",
                style: AppTheme.themeArabic.textTheme.titleLarge,
              ),
              SizedBox(height: 10),
              // "اسم المستخدم" Text
              Text(
                "اسم المستخدم",
                style: AppTheme.themeArabic.textTheme.titleSmall,
              ),

              // CustomTextFormField for username
              CustomTextFormField(
                hintText: "اسم مستخدم او رقم هاتف",
                borderColor: AppColors.lightBlue,
                radius: 8,
                height: 50,
              ),

              SizedBox(height: 20),
              Text(
                "كلمة المرور",
                style: AppTheme.themeArabic.textTheme.titleSmall,
              ),

              // CustomTextFormField for password
              CustomTextFormField(
                hintText: "**********",
                borderColor: AppColors.lightBlue,
                radius: 8,
                height: 50,
                suffixIcon: FontAwesomeIcons.eyeSlash,
              ),

              Align(
                alignment: Alignment.centerLeft, // Align left
                child: TextButton(
                  onPressed: () {
                    // Handle forget password action here
                  },
                  child: Text(
                    "هل نسيت كلمة المرور؟",
                    style: TextStyle(
                      color: AppColors.maron,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Container(
                width: 359,
                height: 52,
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                     MaterialPageRoute(builder: (context) => Acount_setting()),
                     /* MaterialPageRoute(builder: (context) => MyOrderScreen()),*/
                    );
                  },
                  child: Text(
                    "تسجيل الدخول",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "انشاء حساب",
                      style: TextStyle(
                        color: AppColors.orange,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Text(
                    "ليس لديك حساب؟",
                    style: AppTheme.themeArabic.textTheme.bodyMedium,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      extendBody: true, // Allow the Scaffold body to extend beyond the app bar
      extendBodyBehindAppBar: true, // Extend the body behind the app bar
      bottomNavigationBar: Container(
        width: 393,
        height: 102,
        decoration: BoxDecoration(
          color: AppColors.light_grey,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60),
            topRight: Radius.circular(60),
          ),
        ),
        child: Center(
          child: Text(
            "تسجيل دخول كضيف",
            style: TextStyle(
              color: AppColors.lightBlue,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}


class CustomTextFormField extends StatelessWidget {
  final String? hintText; // Change the type to String?
  final Color borderColor;
  final double radius;
  final double height;
  final IconData? suffixIcon;

  CustomTextFormField({
    this.hintText,
    required this.borderColor,
    required this.radius,
    required this.height,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(
          color: borderColor,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            if (suffixIcon != null)
              Icon(
                suffixIcon,
                color: Colors.grey,
              ),
            Expanded(
              child: TextFormField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  hintText: hintText,
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}