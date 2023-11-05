import 'package:flutter/material.dart';
import 'package:captain_egypt/core/constants/app_colors.dart';
import 'package:get/get.dart';
import '../core/constants/app_routes.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Get.offNamed(AppRoutes.loginScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Stack(
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/images/splash_logo.png'),
              ],
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Container(
              width: 201,
              height: 9,
              color: AppColors.orange,
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              width: 201,
              height: 9,
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
