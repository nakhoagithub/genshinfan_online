import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:genshinfan/models/app/response_api.dart';
import 'package:genshinfan/utils/theme.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  Rx<ThemeData> themeData = ThemeData().obs;

  Connectivity connectivity = Connectivity();
  RxBool connectedInternet = false.obs;
  RxString language = "vi".obs;
  RxList<ResponseLog> resLogs = <ResponseLog>[].obs;

  @override
  void onInit() {
    super.onInit();
    themeData.value = ThemeApp.theme;

    connectivity.onConnectivityChanged.listen((value) async {
      if (value == ConnectivityResult.none) {
        connectedInternet.value = false;
      } else {
        connectedInternet.value = true;
      }
    });
  }
}
