import 'package:get/get.dart';

import '../core/constants/app_routes.dart';
import '../view/auth/login/screens/login_screen.dart';

class AppRouters {
  static final routes = [
    GetPage(name: AppRoutes.loginScreen, page: () => const LoginScreen())
  ];
}
