import 'package:flutter/material.dart';
import 'package:genshinfan/utils/theme.dart';
import 'package:get/get.dart';

class TitleInfo extends StatelessWidget {
  final String title;
  const TitleInfo({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 10),
      padding: const EdgeInsets.only(left: 26, right: 26, top: 8, bottom: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Get.theme.colorScheme.primary.withOpacity(0.2),
      ),
      child: Text(
        "❖  $title  ❖",
        style: ThemeApp.textStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
