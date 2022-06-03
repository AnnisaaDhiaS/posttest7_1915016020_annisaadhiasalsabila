import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest7_1915016020_annisaadhiasalsabila/main_page.dart';

class SSController extends GetxController {
  // Ini mirip initstate
  @override
  void onInit() {
    super.onInit();
    Timer(Duration(seconds: 5), () {
      // Get.off() == Navigator.pushReplacement()
      Get.off(main_page());
    });
  }
}
