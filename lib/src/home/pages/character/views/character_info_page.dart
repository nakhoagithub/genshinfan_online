import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:genshinfan/models/game/character.dart';
import 'package:genshinfan/src/home/pages/character/controllers/character_info_controller.dart';
import 'package:genshinfan/src/home/pages/character/widgets/dialog_detail_talent.dart';
import 'package:genshinfan/utils/config.dart';
import 'package:genshinfan/utils/theme.dart';
import 'package:genshinfan/utils/tool.dart';
import 'package:genshinfan/widgets/back_button.dart';
import 'package:genshinfan/widgets/image_failure.dart';
import 'package:genshinfan/widgets/item.dart';
import 'package:genshinfan/widgets/list_empty.dart';
import 'package:genshinfan/widgets/progress.dart';
import 'package:genshinfan/widgets/text_css.dart';
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
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(30),
          child: TabBar(
            isScrollable: true,
            indicatorColor: Get.theme.colorScheme.primary,
            controller: characterInfoController.tabController,
            tabs: [
              Tab(text: "information".tr),
              Tab(text: "stat".tr),
              Tab(text: "talent".tr),
              Tab(text: "passive".tr),
              Tab(text: "constellation".tr),
              Tab(text: "namecard".tr),
              Tab(text: "food".tr),
              Tab(text: "outfit".tr),
              Tab(text: "companition".tr),
              Tab(text: "story".tr),
              Tab(text: "voice".tr),
            ],
            physics: const BouncingScrollPhysics(),
          ),
        ),
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
        Get.put(CharacterInfoController());
    return TabBarView(
      controller: characterInfoController.tabController,
      children: const [
        _Info(),
        _Stat(),
        _Talent(),
        _Passive(),
        _Constellation(),
        SizedBox(),
        SizedBox(),
        SizedBox(),
        SizedBox(),
        SizedBox(),
        SizedBox(),
      ],
    );
  }
}

class _Info extends StatelessWidget {
  const _Info();

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
                ],
              );
      }),
    );
  }
}

class _Stat extends StatelessWidget {
  const _Stat();

  @override
  Widget build(BuildContext context) {
    CharacterInfoController characterInfoController =
        Get.find<CharacterInfoController>();
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Obx(() {
        return Column(
          children: [
            // hp
            ListTile(
              leading: Image.asset(
                "assets/images/ic_hp.png",
                width: 24,
                height: 24,
                color: Get.theme.colorScheme.onSurface,
              ),
              title: Text("base_hp".tr),
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
              title: Text("base_atk".tr),
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
              title: Text("base_def".tr),
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
              title: Text(characterInfoController.baseSpecializedKey.value.tr),
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
            const _CostStat(),
          ],
        );
      }),
    );
  }
}

class _CostStat extends StatelessWidget {
  const _CostStat();

  @override
  Widget build(BuildContext context) {
    CharacterInfoController characterInfoController =
        Get.find<CharacterInfoController>();

    return SizedBox(
      height: 140,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: Obx(() {
          Character? character = characterInfoController.character.value;
          Map<String, dynamic>? costItems = character
              ?.upgrade
              ?.promote?[characterInfoController.promoteLevel.value.toInt()]
              .costItems;

          num? coinCost = character
              ?.upgrade
              ?.promote?[characterInfoController.promoteLevel.value.toInt()]
              .coinCost;

          return costItems == null
              ? ListEmpty(title: "empty_cost".tr)
              : Column(
                  children: [
                    Row(
                      children: [
                        ...costItems.entries.map(
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
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          "${"required".tr}:",
                          style: ThemeApp.textStyle(fontSize: 16),
                        ),
                        Image.asset(
                          "assets/images/UI_ItemIcon_202.png",
                          height: 24,
                          width: 24,
                        ),
                        Text(
                          "${coinCost ?? ""}",
                          style: ThemeApp.textStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                );
        }),
      ),
    );
  }
}

class _Talent extends StatelessWidget {
  const _Talent();

  @override
  Widget build(BuildContext context) {
    CharacterInfoController characterInfoController =
        Get.find<CharacterInfoController>();
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Obx(() {
        Character? character = characterInfoController.character.value;

        List<Talent?> combats = character?.talent?.entries
                .map((e) {
                  if (e.value.type != 2) {
                    return e.value;
                  }
                })
                .where((element) => element != null)
                .toList() ??
            [];

        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Combat
            ...combats.map(
              (e) {
                return Column(
                  children: [
                    ListTile(
                      isThreeLine: true,
                      leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Get.theme.colorScheme.onSurface),
                        ),
                        child: CachedNetworkImage(
                          imageUrl: Tool.getUriUI(e?.icon ?? ""),
                          fit: BoxFit.cover,
                          height: 40,
                          width: 40,
                          progressIndicatorBuilder: (context, url, progress) {
                            return const CircularProgressApp();
                          },
                          errorWidget: (context, url, error) {
                            return const ImageFailure();
                          },
                        ),
                      ),
                      title: Text(e?.name ?? ""),
                      subtitle:
                          TextCSS(Tool.boldColorText(e?.description ?? "")),
                      onTap: () async {
                        await dialogDetailTalent(
                            talent: e, character: character);
                      },
                    ),
                    const Divider(),
                  ],
                );
              },
            ),
          ],
        );
      }),
    );
  }
}

class _Passive extends StatelessWidget {
  const _Passive();

  @override
  Widget build(BuildContext context) {
    CharacterInfoController characterInfoController =
        Get.find<CharacterInfoController>();
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Obx(() {
        Character? character = characterInfoController.character.value;
        List<Talent?> passives = character?.talent?.entries
                .map((e) {
                  if (e.value.type == 2) {
                    return e.value;
                  }
                })
                .where((element) => element != null)
                .toList() ??
            [];

        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Passive
            ...passives.map(
              (e) {
                return Column(
                  children: [
                    ListTile(
                      isThreeLine: true,
                      leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Get.theme.colorScheme.onSurface),
                        ),
                        child: CachedNetworkImage(
                          imageUrl: Tool.getUriUI(e?.icon ?? ""),
                          fit: BoxFit.cover,
                          height: 40,
                          width: 40,
                          progressIndicatorBuilder: (context, url, progress) {
                            return const CircularProgressApp();
                          },
                          errorWidget: (context, url, error) {
                            return const ImageFailure();
                          },
                        ),
                      ),
                      title: Text(e?.name ?? ""),
                      subtitle:
                          TextCSS(Tool.boldColorText(e?.description ?? "")),
                    ),
                    const Divider(),
                  ],
                );
              },
            ),
          ],
        );
      }),
    );
  }
}

class _Constellation extends StatelessWidget {
  const _Constellation();

  @override
  Widget build(BuildContext context) {
    CharacterInfoController characterInfoController =
        Get.find<CharacterInfoController>();
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Obx(() {
        Map<String, Constellation>? constellations =
            characterInfoController.character.value?.constellation;
        return Column(
          children: [
            ...(constellations?.entries ?? {}).map((element) {
              int level = (int.tryParse(element.key) ?? 0) + 1;
              Constellation e = element.value;
              return Column(
                children: [
                  ListTile(
                    isThreeLine: true,
                    leading: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border:
                            Border.all(color: Get.theme.colorScheme.onSurface),
                      ),
                      child: CachedNetworkImage(
                        imageUrl: Tool.getUriUI(e.icon ?? ""),
                        fit: BoxFit.cover,
                        height: 40,
                        width: 40,
                        progressIndicatorBuilder: (context, url, progress) {
                          return const CircularProgressApp();
                        },
                        errorWidget: (context, url, error) {
                          return const ImageFailure();
                        },
                      ),
                    ),
                    title: Text("$level.${e.name ?? ""}"),
                    subtitle: TextCSS(Tool.boldColorText(e.description ?? "")),
                  ),
                  const Divider(),
                ],
              );
            }),
          ],
        );
      }),
    );
  }
}


