import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MyServices extends GetxService {
  late GetStorage getBox;

  Future<MyServices> init() async {
//----------------------------------------------------------------

    WidgetsFlutterBinding.ensureInitialized();

//----------------------------------------------------------------

    await GetStorage.init();
    getBox = GetStorage();

//----------------------------------------------------------------

    return this;
  }
}

initialServices() async {
  await Get.putAsync(() => MyServices().init());
}
