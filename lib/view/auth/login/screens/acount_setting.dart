export  'package:captain_egypt/core/constants/app_colors.dart';
export 'package:captain_egypt/core/constants/app_themes.dart';
export 'package:captain_egypt/core/shared/custom_button.dart';
export 'package:captain_egypt/core/shared/custom_text_form_field.dart';
import 'package:captain_egypt/view/auth/login/screens/acount_setting.dart';
import 'package:captain_egypt/view/auth/login/screens/myorder_screen.dart';
import 'package:captain_egypt/view/auth/login/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Acount_setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> location = ["حدد موقعك"];
    return Scaffold(
      appBar:
      AppBar(
        title: Text(
          'اعدادات الحساب',
          style: TextStyle(color: Colors.white), // Set text color
        ),
        centerTitle: true, // Center the title
        backgroundColor:  AppColors.primary, // Set background color
      ),
        body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            textDirection: TextDirection.rtl, // Right-to-left alignment
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

              SizedBox(height: 10),
              // "اسم المستخدم" Text
              Text(
                "الاسم كامل",
                style: AppTheme.themeArabic.textTheme.titleSmall,
              ),

              // CustomTextFormField for username
              CustomTextFormField(
                hintText: "ادخل الاسم كامل",
                borderColor: AppColors.lightBlue,
                radius: 8,
                height: 50,
              ),

              SizedBox(height: 20),
              Text(
                 "رقم الهاتف",
                style: AppTheme.themeArabic.textTheme.titleSmall,
              ),

              // CustomTextFormField for password
              CustomTextFormField(
                hintText: "+20 999 99999",
                borderColor: AppColors.lightBlue,
                radius: 8,
                height: 50,
              ),
              SizedBox(height: 20),
              Text(
             "رقم القومي",
                style: AppTheme.themeArabic.textTheme.titleSmall,
              ),

              // CustomTextFormField for password
              CustomTextFormField(
                hintText: "ادخل الرقم القومي",
                borderColor: AppColors.lightBlue,
                radius: 8,
                height: 50,
              ),
              SizedBox(height: 20),
              Text(
                "صورة البطاقه",
                style: AppTheme.themeArabic.textTheme.titleSmall,
              ),
              CustomTextFormField(
                hintText:null,
                borderColor: AppColors.lightBlue,
                radius: 8,
                height: 50,
                suffixIcon: FontAwesomeIcons.paperclip,
              ),
              SizedBox(height: 20),
              Text(
                "صورة الرخصه الشخصيه",
                style: AppTheme.themeArabic.textTheme.titleSmall,
              ),
              CustomTextFormField(
                hintText:null,
                borderColor: AppColors.lightBlue,
                radius: 8,
                height: 50,
                suffixIcon: FontAwesomeIcons.paperclip,
              ),
              SizedBox(height: 20),
              Text(
                "صوره السيارة",
                style: AppTheme.themeArabic.textTheme.titleSmall,
              ),
              CustomTextFormField(
                hintText:null,
                borderColor: AppColors.lightBlue,
                radius: 8,
                height: 50,
                suffixIcon: FontAwesomeIcons.paperclip,
              ),
              SizedBox(height: 20),
              Text(
                "صورة الفيش الجنائي (اختياري)",
                style: AppTheme.themeArabic.textTheme.titleSmall,
              ),
              CustomTextFormField(
                hintText:null,
                borderColor: AppColors.lightBlue,
                radius: 8,
                height: 50,
                suffixIcon: FontAwesomeIcons.paperclip,
              ),
              SizedBox(height: 20),
              Text(
                "صوره فحص السيارة(اختياري)",
                style: AppTheme.themeArabic.textTheme.titleSmall,
              ),
              CustomTextFormField(
                hintText:null,
                borderColor: AppColors.lightBlue,
                radius: 8,
                height: 50,
                suffixIcon: FontAwesomeIcons.paperclip,
              ),
              SizedBox(height: 20),
              Text(
                "العنوان",
                style: AppTheme.themeArabic.textTheme.titleSmall,
              ),

              DropdownButton<String>(
                style: TextStyle(
                  color: Colors.grey[400],
                ),
                value: "حدد موقعك",
                isExpanded: true,
                items: location.map<DropdownMenuItem<String>>(
                      (String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            FontAwesomeIcons.chevronDown,
                            color: Colors.grey[300],
                            size: 20,
                          ),
                          SizedBox(width: 8), // Adjust the space between icon and text
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(value),
                          ),
                        ],
                      ),
                    );
                  },
                ).toList(),
                onChanged: (value) {},
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
                      MaterialPageRoute(builder: (context) => ProfileScreen()),
                    );
                  },
                  child: Text(
                    "حفظ",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              Container(
                width: 359,
                height: 52,
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.primary)
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyOrderScreen()),
                    );
                  },
                  child: Text(
                    "الغاء",
                    style: TextStyle(color:AppColors.primary, fontSize: 18),
                  ),
                ),
              ),


            ],
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




