import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ctrlTeks extends GetxController {
  var pembeli = "".obs;

  final pembeliCtrl = TextEditingController();
}

class ctrlUkuran extends GetxController {
  var uk = "".obs;

  ganti(var sized) {
    uk.value = sized;
  }
}

class ctrlHome extends GetxController {
  var tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
