import 'dart:async';

import 'package:genshinfan/models/game/character.dart';
import 'package:genshinfan/services/character.dart';
import 'package:get/get.dart';

class CharacterController extends GetxController {
  RxBool loading = false.obs;
  RxList<Rx<Character>> characters = <Rx<Character>>[].obs;
  Rx<CharacterCurve?> characterCurve = Rx(null);

  Future<void> _init() async {
    loading.value = true;
    List<Character> datas = await CharacterService().getDatas();
    characters.value = datas.map((e) => Rx(e)).toList();
    characterCurve.value = await CharacterService().getCharacterCurves();
    loading.value = false;
  }

  @override
  void onInit() async {
    super.onInit();
    await _init();
  }
}
