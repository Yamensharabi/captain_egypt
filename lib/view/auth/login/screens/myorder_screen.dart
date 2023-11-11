export  'package:captain_egypt/core/constants/app_colors.dart';
export 'package:captain_egypt/core/constants/app_themes.dart';
export 'package:captain_egypt/core/shared/custom_button.dart';
export 'package:captain_egypt/core/shared/custom_text_form_field.dart';
import 'package:captain_egypt/view/auth/login/screens/acount_setting.dart';
import 'package:flutter/material.dart';

class MyOrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'طلباتي',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: AppColors.primary,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            textDirection: TextDirection.rtl,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "22",
                    style: TextStyle(
                      color: AppColors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    ": عدد الطلبات الكلي", // Replace with the desired number
                    style: AppTheme.themeArabic.textTheme.titleLarge,
                  ),
                ],
              ),
              SizedBox(height: 10),

              Container(
                width: 360,
                height: 300,
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  color: Colors.white,
                  border: Border.all(
                    color: AppColors.primary,
                    width: 2.0,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // Row 1 - Title
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "60ج.م",
                                style: TextStyle(
                                  color: AppColors.orange,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                'يامن الشامي',
                                style: AppTheme.themeArabic.textTheme.titleLarge,
                                textAlign: TextAlign.right,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "5كم",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                '010 111 222 333',
                                style: AppTheme.themeArabic.textTheme.bodySmall,
                                textAlign: TextAlign.right,
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                    // Divider
                    Divider(
                      color: AppColors.light_grey,
                      thickness: 2.0,
                    ),
                    // Row 2
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'من',
                            style: AppTheme.themeArabic.textTheme.bodySmall,
                            textAlign: TextAlign.right,
                          ),
                          // Smaller text under the first row
                          Text(
                            'القاهرة - شارع 6 أكتوبر',
                            style: AppTheme.themeArabic.textTheme.titleMedium,
                            textAlign: TextAlign.right,
                          ),
                        ],
                      ),
                    ),
                    // Divider
                    Divider(
                      color: AppColors.light_grey,
                      thickness: 2.0,
                    ),
                    // Row 3
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'الي',
                            style: AppTheme.themeArabic.textTheme.bodySmall,
                            textAlign: TextAlign.right,
                          ),
                          // Smaller text under the first row
                          Text(
                            'القاهرة - شارع 6 أكتوبر',
                            style: AppTheme.themeArabic.textTheme.titleMedium,
                            textAlign: TextAlign.right,
                          ),
                        ],
                      ),
                    ),
                    // Divider
                    Divider(
                      color: AppColors.light_grey,
                      thickness: 2.0,
                    ),
                    // Row 4
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(
                        "10/10/2012",
                        style: AppTheme.themeArabic.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                width: 352,
                height: 300,
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  color: Colors.white,
                  border: Border.all(
                    color: AppColors.primary,
                    width: 2.0,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // Row 1 - Title
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "60ج.م",
                                style: TextStyle(
                                  color: AppColors.orange,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                'يامن الشامي',
                                style: AppTheme.themeArabic.textTheme.titleLarge,
                                textAlign: TextAlign.right,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "5كم",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                '010 111 222 333',
                                style: AppTheme.themeArabic.textTheme.bodySmall,
                                textAlign: TextAlign.right,
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                    // Divider
                    Divider(
                      color: AppColors.light_grey,
                      thickness: 2.0,
                    ),
                    // Row 2
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'من',
                            style: AppTheme.themeArabic.textTheme.bodySmall,
                            textAlign: TextAlign.right,
                          ),
                          // Smaller text under the first row
                          Text(
                            'القاهرة - شارع 6 أكتوبر',
                            style: AppTheme.themeArabic.textTheme.titleMedium,
                            textAlign: TextAlign.right,
                          ),
                        ],
                      ),
                    ),
                    // Divider
                    Divider(
                      color: AppColors.light_grey,
                      thickness: 2.0,
                    ),
                    // Row 3
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'الي',
                            style: AppTheme.themeArabic.textTheme.bodySmall,
                            textAlign: TextAlign.right,
                          ),
                          // Smaller text under the first row
                          Text(
                            'القاهرة - شارع 6 أكتوبر',
                            style: AppTheme.themeArabic.textTheme.titleMedium,
                            textAlign: TextAlign.right,
                          ),
                        ],
                      ),
                    ),
                    // Divider
                    Divider(
                      color: AppColors.light_grey,
                      thickness: 2.0,
                    ),
                    // Row 4
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(
                        "10/10/2012",
                        style: AppTheme.themeArabic.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 352,
                height: 300,
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  color: Colors.white,
                  border: Border.all(
                    color: AppColors.primary,
                    width: 2.0,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // Row 1 - Title
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "60ج.م",
                                style: TextStyle(
                                  color: AppColors.orange,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                'يامن الشامي',
                                style: AppTheme.themeArabic.textTheme.titleLarge,
                                textAlign: TextAlign.right,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "5كم",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                '010 111 222 333',
                                style: AppTheme.themeArabic.textTheme.bodySmall,
                                textAlign: TextAlign.right,
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                    // Divider
                    Divider(
                      color: AppColors.light_grey,
                      thickness: 2.0,
                    ),
                    // Row 2
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'من',
                            style: AppTheme.themeArabic.textTheme.bodySmall,
                            textAlign: TextAlign.right,
                          ),
                          // Smaller text under the first row
                          Text(
                            'القاهرة - شارع 6 أكتوبر',
                            style: AppTheme.themeArabic.textTheme.titleMedium,
                            textAlign: TextAlign.right,
                          ),
                        ],
                      ),
                    ),
                    // Divider
                    Divider(
                      color: AppColors.light_grey,
                      thickness: 2.0,
                    ),
                    // Row 3
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'الي',
                            style: AppTheme.themeArabic.textTheme.bodySmall,
                            textAlign: TextAlign.right,
                          ),
                          // Smaller text under the first row
                          Text(
                            'القاهرة - شارع 6 أكتوبر',
                            style: AppTheme.themeArabic.textTheme.titleMedium,
                            textAlign: TextAlign.right,
                          ),
                        ],
                      ),
                    ),
                    // Divider
                    Divider(
                      color: AppColors.light_grey,
                      thickness: 2.0,
                    ),
                    // Row 4
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(
                        "10/10/2012",
                        style: AppTheme.themeArabic.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
