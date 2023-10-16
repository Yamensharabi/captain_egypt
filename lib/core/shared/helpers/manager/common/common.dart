
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:fluttertoast/fluttertoast.dart';


import '../../../constants/app_colors.dart';
import '../../text_widget.dart';


abstract class Common{
  static showToast({required String message}) {
    FToast fToast;
    fToast = FToast();
    fToast.removeQueuedCustomToasts();
    fToast.init(Get.overlayContext!);
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.blue,
        boxShadow: const [
          BoxShadow(
              color: Colors.black12,
              offset: Offset.zero,
              spreadRadius: 1,
              blurRadius: 5)
        ],
      ),
      child: TextWidget(message.tr,
          textColor: Colors.white, textAlign: TextAlign.center),
    );

    fToast.showToast(
      child: toast,
      gravity: ToastGravity.TOP,
      toastDuration: const Duration(seconds: 3),
    );
  }
  static Widget getSpin({double size = 50.0, double? lineWidth}) {
    return SpinKitThreeBounce(
      color: Get.isDarkMode ? Colors.white : AppColors.primary,
      size: size,
    );
  }
}