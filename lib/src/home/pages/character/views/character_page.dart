import 'package:flutter/material.dart';
import 'package:genshinfan/src/home/pages/character/controllers/character_controller.dart';
import 'package:get/get.dart';

class CharacterPage extends StatelessWidget {
  const CharacterPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CharacterController());
    return Scaffold();
  }
}
