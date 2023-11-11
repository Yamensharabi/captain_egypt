export  'package:captain_egypt/core/constants/app_colors.dart';
export 'package:captain_egypt/core/constants/app_themes.dart';
export 'package:captain_egypt/core/shared/custom_button.dart';
export 'package:captain_egypt/core/shared/custom_text_form_field.dart';
import 'package:captain_egypt/view/auth/login/screens/acount_setting.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  // Dummy data for the ListView.builder
  final List<String> items = ["اعدادات الحساب", "تعديل كلمه المرور", "تسجيل خروج"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'الملف الشخصي',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: AppColors.primary, // Replace with your color
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            textDirection: TextDirection.rtl,
            children: [
              Center(
                child: Stack(
                  children: [
                    Image.asset("assets/images/user_avatar.png"),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  "يامن الشرابي",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  "010 111 222 333",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Adding ListView.builder
              ListView.builder(
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.arrow_back,
                                  color:AppColors.primary, // Replace with your desired color
                                ),
                                SizedBox(width: 8), // Add spacing between icon and text
                              ],
                            ),

                            Text(
                              items[index],
                              textDirection: TextDirection.rtl,
                              style:AppTheme.themeArabic.textTheme.titleSmall,
                            ),
                          ],
                        ),
                        // Other properties for the ListTile as needed
                      ),
                      Divider(), // Add a Divider after each ListTile
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
