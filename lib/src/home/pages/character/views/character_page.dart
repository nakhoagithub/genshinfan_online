import 'package:flutter/material.dart';
import 'package:genshinfan/src/home/pages/character/controllers/character_controller.dart';
import 'package:get/get.dart';

class CharacterPage extends StatelessWidget {
  const CharacterPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CharacterController());
    return const Scaffold(
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    CharacterController characterController = Get.find<CharacterController>();
    return Obx(() {
      bool loading = characterController.loading.value;
      return loading ? LinearProgressIndicator() : SizedBox();
    });
  }
}
