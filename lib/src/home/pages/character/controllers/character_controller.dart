import 'package:genshinfan/services/character.dart';
import 'package:get/get.dart';

class CharacterController extends GetxController {
  RxBool loading = false.obs;

  Future<void> _init() async {
    loading.value = true;
    await CharacterService().getDatas();
    loading.value = false;
  }

  @override
  void onInit() async {
    super.onInit();
    await _init();
  }
}
