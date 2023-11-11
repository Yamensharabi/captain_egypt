import 'package:captain_egypt/view/auth/login/screens/acount_setting.dart';
import 'package:captain_egypt/view/auth/login/screens/how to log in screen.dart';
import 'package:get/get.dart';

import '../core/constants/app_routes.dart';
import '../view/auth/login/screens/login_screen.dart';
import 'package:captain_egypt/view/splash_page.dart';



class AppRouters {
  static final routes = [
    GetPage(name: AppRoutes.splashScreen, page: () =>  SplashScreen()),
    GetPage(name: AppRoutes.loginScreen, page: () => LoginScreen() ),


  ];
}


