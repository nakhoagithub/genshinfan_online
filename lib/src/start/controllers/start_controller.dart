import 'package:get/get.dart';

class StartController extends GetxController {
  Future<void> _init() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.toNamed("/home");
  }

  @override
  void onInit() async {
    super.onInit();
    await _init();
  }
}
