import 'package:captain_egypt/view/auth/login/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              "assets/images/message_icon.png",
            ),
          ),
          const Text(
            "لقد قمنا بإرسال رمز التأكيد إلي رقم هاتفك رجاء قم بإدخاله في الأسفل",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "ادخل الرمز هنا",
                style: AppTheme.themeArabic.textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 12,
              ),
              const Pinput(
                length: 4,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                obscureText: true,
                obscuringWidget: Text(
                  "*",
                  style: TextStyle(color: Colors.grey, fontSize: 25),
                ),
              )
            ],
          ),
          Center(
            child: Column(
              children: [
                const Text(
                  "لم يصلك الرمز حتى الآن؟",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                Text(
                  "إعاده إرسال الرمز خلال 5:00",
                  style: TextStyle(fontSize: 18, color: AppColors.lightBlue),
                ),
              ],
            ),
          ),
          CustomButton(
            onPressed: () {},
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(8),
            width: double.infinity,
            child: const Text(
              "تأكيد",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}

Widget otpField() {
  return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return CustomTextFormField(
          hintText: "*",
          borderColor: AppColors.lightBlue,
          radius: 8,
          height: 45,
          width: 45,
        );
      });
}
