import 'package:captain_egypt/view/auth/login/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailsLoginData extends StatelessWidget {
  const DetailsLoginData({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> location = ["حدد موقعك"];
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/user_avatar.png",
                    ),
                    Positioned(
                      bottom: 10,
                      child: Image.asset(
                        "assets/images/camera_icon.png",
                        scale: 1,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "إنشاء حساب سائق",
                style: AppTheme.themeArabic.textTheme.titleLarge,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "الرقم القومي",
                    style: AppTheme.themeArabic.textTheme.titleSmall,
                  ),
                  CustomTextFormField(
                    hintText: "ادخل الرقم القومي",
                    borderColor: AppColors.lightBlue,
                    radius: 8,
                    height: 50,
                  ),
                ],
              ),
              dataWidget(text: "صورة البطاقه"),
              dataWidget(text: "صورة الرخصة الشخصيه"),
              dataWidget(text: "صورة السيارة"),
              dataWidget(text: "صورة الفيش الجنائي (اختياري)"),
              dataWidget(text: "صوره فحص السياره (اختياري)"),
              Text(
                "العنوان",
                style: AppTheme.themeArabic.textTheme.titleSmall,
              ),
              SizedBox(
                width: double.infinity,
                child: DropdownButton(

                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                  icon: Icon(
                    FontAwesomeIcons.chevronDown,
                    color: Colors.grey[300],
                    size: 20,
                  ),
                  value: "حدد موقعك",
                  isExpanded: true,
                  items: location.map<DropdownMenuItem<String>>(
                        (String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    },
                  ).toList(),
                  onChanged: (value) {},
                ),
              ),
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
            ],
          ),
        ),
      ),
    );
  }
}

Widget dataWidget({String? text, String? hintText}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        text ?? "",
        style: AppTheme.themeArabic.textTheme.titleSmall,
      ),
      CustomTextFormField(
        hintText: hintText,
        borderColor: AppColors.lightBlue,
        radius: 8,
        height: 50,
        suffixIcon: FontAwesomeIcons.paperclip,
      ),
    ],
  );
}
