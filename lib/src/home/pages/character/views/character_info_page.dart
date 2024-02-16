import 'package:flutter/material.dart';
import 'package:genshinfan/models/game/character.dart';
import 'package:genshinfan/src/home/pages/character/controllers/character_info_controller.dart';
import 'package:genshinfan/utils/config.dart';
import 'package:genshinfan/utils/theme.dart';
import 'package:genshinfan/utils/tool.dart';
import 'package:genshinfan/widgets/back_button.dart';
import 'package:genshinfan/widgets/item.dart';
import 'package:genshinfan/widgets/list_empty.dart';
import 'package:genshinfan/widgets/progress.dart';
import 'package:get/get.dart';

class CharacterInfoPage extends StatelessWidget {
  const CharacterInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    CharacterInfoController characterInfoController =
        Get.put(CharacterInfoController());
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonApp(),
        title: Obx(() {
          bool loading = characterInfoController.loading.value;
          return loading
              ? Text("loading".tr)
              : Text(
                  characterInfoController.character.value?.name ??
                      "character".tr,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                );
        }),
      ),
      body: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    CharacterInfoController characterInfoController =
        Get.find<CharacterInfoController>();
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Obx(() {
        bool loading = characterInfoController.loading.value;
        return loading
            ? const CircularProgressApp()
            : Column(
                children: [
                  ListTile(
                    title: Text("name".tr),
                    trailing: Text(
                      characterInfoController.character.value?.name ?? "",
                      style: ThemeApp.textStyle(
                          fontSize: Config.fontSizeTrailingTextInfo),
                    ),
                    onTap: () {},
                  ),
                  // elelement
                  ListTile(
                    title: Text("element".tr),
                    trailing: Image.asset(
                      Tool.getAssetElement(
                        characterInfoController.character.value?.element,
                      ),
                      width: 40,
                      height: 40,
                    ),
                    onTap: () {},
                  ),
                  // weapon
                  ListTile(
                    title: Text("weapon".tr),
                    trailing: Image.asset(
                      Tool.getAssetWeapon(
                        characterInfoController.character.value?.weaponType,
                      ),
                      width: 40,
                      height: 40,
                    ),
                    onTap: () {},
                  ),
                  // constellation
                  ListTile(
                    title: Text("constellation".tr),
                    trailing: Text(
                      characterInfoController
                              .character.value?.fetter?.constellation ??
                          "",
                      style: ThemeApp.textStyle(
                          fontSize: Config.fontSizeTrailingTextInfo),
                    ),
                    onTap: () {},
                  ),
                  // affiliation
                  ListTile(
                    title: Text("affiliation".tr),
                    trailing: Text(
                      characterInfoController.character.value?.fetter?.native ??
                          "",
                      style: ThemeApp.textStyle(
                          fontSize: Config.fontSizeTrailingTextInfo),
                    ),
                    onTap: () {},
                  ),
                  // birthday
                  characterInfoController.character.value?.birthday?.length == 2
                      ? ListTile(
                          title: Text("birthday".tr),
                          trailing: Text(
                            "${characterInfoController.character.value?.birthday?[0].toString()}/${characterInfoController.character.value?.birthday?[1].toString()}",
                            style: ThemeApp.textStyle(
                                fontSize: Config.fontSizeTrailingTextInfo),
                          ),
                          onTap: () {},
                        )
                      : const SizedBox(),
                  ListTile(
                    title: Text("${"va".tr} (EN)"),
                    trailing: Text(
                      characterInfoController.character.value?.fetter?.cv?.en ??
                          "",
                      style: ThemeApp.textStyle(
                          fontSize: Config.fontSizeTrailingTextInfo),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("${"va".tr} (CHS)"),
                    trailing: Text(
                      characterInfoController
                              .character.value?.fetter?.cv?.chs ??
                          "",
                      style: ThemeApp.textStyle(
                          fontSize: Config.fontSizeTrailingTextInfo),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("${"va".tr} (JP)"),
                    trailing: Text(
                      characterInfoController.character.value?.fetter?.cv?.jp ??
                          "",
                      style: ThemeApp.textStyle(
                          fontSize: Config.fontSizeTrailingTextInfo),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("${"va".tr} (KR)"),
                    trailing: Text(
                      characterInfoController.character.value?.fetter?.cv?.kr ??
                          "",
                      style: ThemeApp.textStyle(
                          fontSize: Config.fontSizeTrailingTextInfo),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("detail".tr),
                    subtitle: Text(
                      characterInfoController.character.value?.fetter?.detail ??
                          "",
                    ),
                    onTap: () {},
                  ),
                  const Divider(),
                  // hp
                  ListTile(
                    leading: Image.asset(
                      "assets/images/ic_hp.png",
                      width: 24,
                      height: 24,
                      color: Get.theme.colorScheme.onSurface,
                    ),
                    title: Text("Base HP"),
                    trailing: Text(
                      characterInfoController.baseHP.value,
                      style: ThemeApp.textStyle(
                          fontSize: Config.fontSizeTrailingTextInfo),
                    ),
                    onTap: () {},
                  ),
                  // atk
                  ListTile(
                    leading: Image.asset(
                      "assets/images/ic_attack.png",
                      width: 24,
                      height: 24,
                      color: Get.theme.colorScheme.onSurface,
                    ),
                    title: Text("Base Attack"),
                    trailing: Text(
                      characterInfoController.baseATK.value,
                      style: ThemeApp.textStyle(
                          fontSize: Config.fontSizeTrailingTextInfo),
                    ),
                    onTap: () {},
                  ),
                  // def
                  ListTile(
                    leading: Image.asset(
                      "assets/images/ic_def.png",
                      width: 24,
                      height: 24,
                      color: Get.theme.colorScheme.onSurface,
                    ),
                    title: Text("Base DEF"),
                    trailing: Text(
                      characterInfoController.baseDEF.value,
                      style: ThemeApp.textStyle(
                          fontSize: Config.fontSizeTrailingTextInfo),
                    ),
                    onTap: () {},
                  ),

                  // special
                  ListTile(
                    leading: Image.asset(
                      Tool.getAssetSpecial(
                          characterInfoController.baseSpecializedKey.value),
                      width: 24,
                      height: 24,
                      color: Tool.isElementProp(
                              characterInfoController.baseSpecializedKey.value)
                          ? null
                          : Get.theme.colorScheme.onSurface,
                    ),
                    title: Text(
                        characterInfoController.baseSpecializedKey.value.tr),
                    trailing: Text(
                      characterInfoController.baseSpecialized.value,
                      style: ThemeApp.textStyle(
                          fontSize: Config.fontSizeTrailingTextInfo),
                    ),
                    onTap: () {},
                  ),
                  // slider
                  ListTile(
                    leading: SizedBox(
                      width: 60,
                      child: Obx(() {
                        return Text(
                          "Lv. ${characterInfoController.levels[characterInfoController.sliderLevel.value]}",
                          style: ThemeApp.textStyle(
                              fontSize: Config.fontSizeTrailingTextInfo),
                        );
                      }),
                    ),
                    title: ObxValue(
                      (p0) => Slider(
                        min: 0,
                        max: 24,
                        value: p0.value.toDouble(),
                        onChanged: (value) {
                          p0.value = value.toInt();
                        },
                      ),
                      characterInfoController.sliderLevel,
                    ),
                    onTap: () {},
                  ),
                  const _Cost(),
                  const Divider(),
                  const SizedBox(height: 100),
                ],
              );
      }),
    );
  }
}

class _Cost extends StatelessWidget {
  const _Cost();

  @override
  Widget build(BuildContext context) {
    CharacterInfoController characterInfoController =
        Get.find<CharacterInfoController>();

    return SizedBox(
      height: 120,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: Obx(() {
          Character? character = characterInfoController.character.value;
          Map<String, dynamic>? costItems = character
              ?.upgrade
              ?.promote?[characterInfoController.promoteLevel.value.toInt()]
              .costItems;

          return costItems == null
              ? ListEmpty(title: "empty_cost".tr)
              : Row(
                  children: [
                    ...(costItems ?? {}).entries.map(
                      (e) {
                        num rank = character?.ascension?[e.key] ?? 1;
                        return ItemGame(
                          size: Get.width * 0.2,
                          title: e.value.toString(),
                          linkImage: Tool.getItemIconUri(e.key),
                          rarity: rank,
                          star: true,
                          onTap: () {},
                        );
                      },
                    ),
                  ],
                );
        }),
      ),
    );
  }
}
