import 'package:flutter/material.dart';
import 'package:genshinfan/models/game/character.dart';
import 'package:genshinfan/utils/config.dart';
import 'package:genshinfan/utils/theme.dart';
import 'package:genshinfan/utils/tool.dart';
import 'package:genshinfan/widgets/item.dart';
import 'package:genshinfan/widgets/list_empty.dart';
import 'package:get/get.dart';

Future dialogDetailTalent({Character? character, Talent? talent}) async {
  RxInt level = (talent?.promote?.entries.length ?? 1).obs;

  await Get.bottomSheet(
    isScrollControlled: true,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    Material(
      color: Get.theme.colorScheme.background,
      child: SizedBox(
        height: Get.height * 0.8,
        child: Column(
          children: [
            const SizedBox(height: 10),
            ListTile(
              leading: SizedBox(
                width: 60,
                child: Obx(() {
                  return Text(
                    "Lv. ${level.value}",
                    style: ThemeApp.textStyle(
                      fontSize: Config.fontSizeTrailingTextInfo,
                    ),
                  );
                }),
              ),
              title: ObxValue(
                (p0) => Slider(
                  min: 1,
                  max: talent?.promote?.entries.length.toDouble() ?? 1.0,
                  value: p0.value.toDouble(),
                  onChanged: (value) {
                    p0.value = value.toInt();
                  },
                ),
                level,
              ),
            ),
            const Divider(),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Obx(() {
                  PromoteValue? promoteValue =
                      talent?.promote?["${level.value}"];
                  return Column(
                    children: [
                      ...(promoteValue?.description ?? []).map((e) {
                        if (e.isNotEmpty) {
                          return Column(
                            children: [
                              ListTile(
                                title: Text(e.substring(0, e.indexOf("|"))),
                                trailing: Text(
                                  Tool.handleParamTalent(
                                    e.substring(e.indexOf("|") + 1),
                                    promoteValue?.params,
                                  ),
                                  style: ThemeApp.textStyle(
                                    fontSize: Config.fontSizeTrailingTextInfo,
                                  ),
                                ),
                              ),
                              const Divider(),
                            ],
                          );
                        }
                        return const SizedBox();
                      }),
                      _Cost(
                        character: character,
                        costItems: promoteValue?.costItems,
                        coinCost: promoteValue?.coinCost,
                      ),
                      const SizedBox(height: 100),
                    ],
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

class _Cost extends StatelessWidget {
  final Character? character;
  final Map<String, num>? costItems;
  final num? coinCost;
  const _Cost({
    required this.character,
    required this.costItems,
    required this.coinCost,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: costItems == null
            ? ListEmpty(title: "empty_cost".tr)
            : Column(
                children: [
                  Row(
                    children: [
                      ...costItems!.entries.map(
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
              ),
      ),
    );
  }
}
