import 'package:flutter/material.dart';
import 'package:genshinfan/src/home/pages/weapon/controllers/weapon_controller.dart';
import 'package:genshinfan/widgets/progress.dart';
import 'package:get/get.dart';

class WeaponPage extends StatelessWidget {
  const WeaponPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(WeaponController());
    return const Scaffold(
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    WeaponController weaponController = Get.find<WeaponController>();
    return Obx(() {
      bool loading = weaponController.loading.value;
      return loading ? const CircularProgressApp() : SizedBox();
    });
  }
}
