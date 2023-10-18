import 'package:flutter/material.dart';
import 'package:captain_egypt/core/constants/app_themes.dart';
import 'package:captain_egypt/core/constants/app_colors.dart';
class Howtologin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // TextField
          Positioned(
            left: 40, // Adjust the position as needed
            top: 60,
            child: Container(
              width: 350, // Adjust the width as needed
              child:Text(
                "كيف تريد تسجيل الدخول ؟",
                style: AppTheme.themeArabic.textTheme.titleLarge,
              ),
            ),
          ),

          // First Container
          Positioned(
            left: 0,
            top: 110,
            child: Container(
              width: 393,
              height: 194,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                ),
                color:AppColors.lightBlue, // Change the color as needed
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/driver.png'), // Replace with your image path
                  Text(' سائق',
                    style: TextStyle(
                      color: AppColors.white,
                     fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Second Container
          Positioned(
            left: 0,
            top: 346,
            child: Container(
              width: 393,
              height: 194,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                ),
                color: AppColors.maron, // Change the color as needed
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/custmer.png'), // Replace with your image path
                  Text('   زبون ',
                    style: TextStyle(
                        color: AppColors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,),
                  ),
                ],
              ),
            ),
          ),

          // Third Container
          Positioned(
            left: 0,
            top: 580,
            child: Container(
              width: 393,
              height: 190,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                ),
                color: AppColors.primary, // Change the color as needed
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/3.png'), // Replace with your image path
                  Text('  مطعم',
                    style: TextStyle(
                        color: AppColors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
