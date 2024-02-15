import 'dart:async';
import 'dart:developer';

import 'package:genshinfan/models/game/character.dart';
import 'package:genshinfan/services/character.dart';
import 'package:get/get.dart';

class CharacterController extends GetxController {
  RxBool loading = false.obs;

  Future<void> _init() async {
    loading.value = true;
    List<CharacterView> datas = await CharacterService().getDatas();

    for (var element in datas) {
      try {
        unawaited(CharacterService().getData(element.id));
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
