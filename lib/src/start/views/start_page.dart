import 'package:flutter/material.dart';
import 'package:genshinfan/src/start/controllers/start_controller.dart';
import 'package:get/get.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(StartController());
    return const Scaffold();
  }
}
