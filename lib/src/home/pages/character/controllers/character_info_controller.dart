import 'package:flutter/material.dart';
import 'package:genshinfan/models/game/character.dart';
import 'package:genshinfan/services/character.dart';
import 'package:genshinfan/src/home/pages/character/controllers/character_controller.dart';
import 'package:get/get.dart';

class CharacterInfoController extends GetxController
    with GetTickerProviderStateMixin {
  TabController? tabController;
  RxInt tab = 0.obs;
  RxBool loading = false.obs;
  RxInt sliderLevel = 24.obs;
  Rx<Character?> character = Rx(null);
  Rx<CharacterCurve?> characterCurve =
      Get.find<CharacterController>().characterCurve;
  Rx<num> level = 90.obs;
  Rx<num> promoteLevel = 6.obs;
  RxString baseHP = "0".obs;
  RxString baseATK = "0".obs;
  RxString baseDEF = "0".obs;
  RxString baseSpecialized = "0".obs;
  RxString baseSpecializedKey = "".obs;

  List<String> levels = [
    "1",
    "5",
    "10",
    "15",
    "20",
    "20+",
    "25",
    "30",
    "35",
    "40",
    "40+",
    "45",
    "50",
    "50+",
    "55",
    "60",
    "60+",
    "65",
    "70",
    "70+",
    "75",
    "80",
    "80+",
    "85",
    "90",
  ];

  List<int> promoteLevels = [
    0,
    0,
    0,
    0,
    0,
    1,
    1,
    1,
    1,
    1,
    2,
    2,
    2,
    3,
    3,
    3,
    4,
    4,
    4,
    5,
    5,
    5,
    6,
    6,
    6,
  ];

  Future<void> getCharacter() async {
    loading.value = true;
    dynamic id = Get.parameters['id'];
    character.value = await CharacterService().getData(id);
    loading.value = false;
  }

  void calcLevel() {
    String levelStr = levels[sliderLevel.value];
    promoteLevel.value = promoteLevels[sliderLevel.value];
    if (levelStr.endsWith("+")) {
      level.value = int.parse(levelStr.substring(0, levelStr.length - 1));
    } else {
      level.value = int.parse(levelStr);
    }
  }

  void calcSpecialKey() {
    baseSpecializedKey.value = character.value?.upgrade?.promote
            ?.firstWhereOrNull((element) => element.addProps != null)
            ?.addProps
            ?.entries
            .toList()
            .firstWhereOrNull((element) =>
                element.key != "FIGHT_PROP_BASE_HP" &&
                element.key != "FIGHT_PROP_BASE_ATTACK" &&
                element.key != "FIGHT_PROP_BASE_DEFENSE")
            ?.key ??
        "";
  }

  void calcStat() {
    calcLevel();
    Character? c = character.value;
    CharacterCurve? cCurve = characterCurve.value;
    if (c != null && cCurve != null) {
      Prop? propHP = c.upgrade?.prop?.firstWhereOrNull(
          (element) => element.propType == "FIGHT_PROP_BASE_HP");
      Prop? propATK = c.upgrade?.prop?.firstWhereOrNull(
          (element) => element.propType == "FIGHT_PROP_BASE_ATTACK");
      Prop? propDEF = c.upgrade?.prop?.firstWhereOrNull(
          (element) => element.propType == "FIGHT_PROP_BASE_DEFENSE");

      CurveInfos? curveInfos =
          cCurve.curve?[level.value.toString()]?.curveInfos;

      PromoteElement? promoteElement =
          c.upgrade?.promote?[promoteLevel.value.toInt()];

      // hp
      num hp = (propHP?.initValue ?? 0) *
              (curveInfos?.toJson()[propHP?.type ?? ""] ?? 0) +
          (promoteElement?.addProps?[propHP?.propType ?? ""] ?? 0);

      baseHP.value = hp.toStringAsFixed(0);

      // atk
      num atk = (propATK?.initValue ?? 0) *
              (curveInfos?.toJson()[propATK?.type ?? ""] ?? 0) +
          (promoteElement?.addProps?[propATK?.propType ?? ""] ?? 0);

      baseATK.value = atk.toStringAsFixed(0);

      // def
      num def = (propDEF?.initValue ?? 0) *
              (curveInfos?.toJson()[propDEF?.type ?? ""] ?? 0) +
          (promoteElement?.addProps?[propDEF?.propType ?? ""] ?? 0);

      baseDEF.value = def.toStringAsFixed(0);

      // specialized
      num? addPropSpecValue =
          promoteElement?.addProps?[baseSpecializedKey.value];

      num specialized = addPropSpecValue ?? 0;

      if (baseSpecializedKey.value == "FIGHT_PROP_CRITICAL") {
        specialized += 0.05;
      } else if (baseSpecializedKey.value == "FIGHT_PROP_CRITICAL_HURT") {
        specialized += 0.5;
      }

      if (baseSpecializedKey.value != "FIGHT_PROP_ELEMENT_MASTERY") {
        specialized = specialized * 100.0;
      }
      baseSpecialized.value = specialized.toStringAsFixed(1);
      if (baseSpecializedKey.value != "FIGHT_PROP_ELEMENT_MASTERY") {
        baseSpecialized.value += " %";
      }
    }
  }

  void calcPercent() {}

  @override
  void onInit() async {
    super.onInit();

    tabController = TabController(length: 5, vsync: this);

    await getCharacter();
    calcSpecialKey();
    calcStat();

    sliderLevel.listen((p0) {
      calcStat();
    });
  }

  @override
  void dispose() {
    super.dispose();
    tabController?.dispose();
  }
}
