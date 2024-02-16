import 'package:flutter/material.dart';
import 'package:genshinfan/models/game/character.dart';
import 'package:genshinfan/src/home/controllers/layout_controller.dart';
import 'package:genshinfan/src/home/pages/character/controllers/character_controller.dart';
import 'package:genshinfan/utils/tool.dart';
import 'package:genshinfan/widgets/item.dart';
import 'package:genshinfan/widgets/progress.dart';
import 'package:get/get.dart';

class CharacterPage extends StatelessWidget {
  const CharacterPage({super.key});

  @override
  Widget build(BuildContext context) {
    CharacterController characterController = Get.put(CharacterController());
    return Obx(() {
      bool loading = characterController.loading.value;
      List<Rx<Character>> characters = characterController.characters;
      return loading
          ? const CircularProgressApp()
          : GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:
                    Get.find<LayoutController>().crossAxisCount.value,
                childAspectRatio:
                    Get.find<LayoutController>().childAspectRatio.value,
              ),
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.zero,
              // crossAxisCount: Get.find<LayoutController>().crossAxisCount.value,
              // childAspectRatio:
              //     Get.find<LayoutController>().childAspectRatio.value,
              itemCount: characters.length,
              itemBuilder: (context, index) {
                return ItemGame(
                  title: characters[index].value.name ?? "",
                  iconLeft: Image.asset(
                      Tool.getAssetElement(characters[index].value.element)),
                  linkImage: Tool.getUriUI(characters[index].value.icon),
                  rarity: characters[index].value.rank,
                  star: true,
                  onTap: () {
                    // characterController.selectCharacter(characters[index]);
                    Get.toNamed(
                        "/character-info?id=${characters[index].value.id}");
                  },
                );
              },
              // children: List.generate(
              //   characters.length,
              //   (index) {
              //     return ItemGame(
              //       title: characters[index].value.name ?? "",
              //       iconLeft: Image.asset(
              //           Tool.getAssetElement(characters[index].value.element)),
              //       linkImage: Tool.getUriUI(characters[index].value.icon),
              //       rarity: characters[index].value.rank,
              //       star: true,
              //       onTap: () {
              //         // characterController.selectCharacter(characters[index]);
              //         // Get.toNamed("/character_info");
              //       },
              //     );
              //   },
              // ),
            );
    });
  }
}
