import 'dart:async';
import 'dart:developer';

import 'package:genshinfan/models/game/weapon.dart';
import 'package:genshinfan/services/weapon.dart';
import 'package:get/get.dart';

class WeaponController extends GetxController {
  RxBool loading = false.obs;

  Future<void> _init() async {
    loading.value = true;
    List<Weapon> datas = await WeaponService().getDatas();

    for (var element in datas) {
      try {
        await WeaponService().getData(element.id);
      } catch (e) {
        log("$e ${element.id}", name: "Error");
      }
    }
    loading.value = false;
  }

  @override
  void onInit() async {
    super.onInit();
    await _init();
  }
}
