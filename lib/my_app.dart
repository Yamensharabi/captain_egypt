import 'package:captain_egypt/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'core/constants/app_routes.dart';
import 'package:captain_egypt/core/localization/localiztion.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, _) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        locale: Get.locale,
        translations: AppLocalizations(), // Create this class to handle translations.
        theme: Get.theme,
        getPages: AppRouters.routes,
        initialRoute: AppRoutes.splashScreen,
      ),
    );
  }
}
