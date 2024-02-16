class CharactersResponse {
  final CharacterWeaponType types;
  final Map<String, dynamic> items;

  const CharactersResponse({
    required this.types,
    required this.items,
  });

  factory CharactersResponse.fromJson(Map<String, dynamic> json) =>
      CharactersResponse(
        types: CharacterWeaponType.fromJson(json["types"]),
        items: json["items"],
      );

  Map<String, dynamic> toJson() => {
        "types": types.toJson(),
        "items": items,
      };
}

class CharacterWeaponType {
  final String weaponSwordOneHand;
  final String weaponCatalyst;
  final String weaponClaymore;
  final String weaponBow;
  final String weaponPole;

  CharacterWeaponType({
    required this.weaponSwordOneHand,
    required this.weaponCatalyst,
    required this.weaponClaymore,
    required this.weaponBow,
    required this.weaponPole,
  });

  factory CharacterWeaponType.fromJson(Map<String, dynamic> json) =>
      CharacterWeaponType(
        weaponSwordOneHand: json["WEAPON_SWORD_ONE_HAND"],
        weaponCatalyst: json["WEAPON_CATALYST"],
        weaponClaymore: json["WEAPON_CLAYMORE"],
        weaponBow: json["WEAPON_BOW"],
        weaponPole: json["WEAPON_POLE"],
      );

  Map<String, dynamic> toJson() => {
        "WEAPON_SWORD_ONE_HAND": weaponSwordOneHand,
        "WEAPON_CATALYST": weaponCatalyst,
        "WEAPON_CLAYMORE": weaponClaymore,
        "WEAPON_BOW": weaponBow,
        "WEAPON_POLE": weaponPole,
      };
}

class Character {
  final dynamic id;
  final num? rank;
  final String? name;
  final String? element;
  final String? weaponType;
  final String? icon;
  final List<num>? birthday;
  final num? release;
  final String? route;
  final Fetter? fetter;
  final Upgrade? upgrade;
  final Other? other;
  final Map<String, num>? ascension;
  final Map<String, Talent>? talent;
  final Map<String, Constellation>? constellation;

  Character({
    this.id,
    this.rank,
    this.name,
    this.element,
    this.weaponType,
    this.icon,
    this.birthday,
    this.release,
    this.route,
    this.fetter,
    this.upgrade,
    this.other,
    this.ascension,
    this.talent,
    this.constellation,
  });

  factory Character.fromJson(Map<String, dynamic> json) => Character(
        id: json["id"],
        rank: json["rank"],
        name: json["name"],
        element: json["element"],
        weaponType: json["weaponType"],
        icon: json["icon"],
        birthday: json["birthday"] == null
            ? null
            : List<num>.from((json["birthday"] as List).map((x) => x)),
        release: json["release"],
        route: json["route"],
        fetter: json["fetter"] == null ? null : Fetter.fromJson(json["fetter"]),
        upgrade:
            json["upgrade"] == null ? null : Upgrade.fromJson(json["upgrade"]),
        other: json["other"] == null ? null : Other.fromJson(json["other"]),
        ascension: json["ascension"] == null
            ? null
            : Map.from(json["ascension"])
                .map((k, v) => MapEntry<String, num>(k, v)),
        talent: json["talent"] == null
            ? null
            : Map.from(json["talent"])
                .map((k, v) => MapEntry<String, Talent>(k, Talent.fromJson(v))),
        constellation: json["constellation"] == null
            ? null
            : Map.from(json["constellation"]).map((k, v) =>
                MapEntry<String, Constellation>(k, Constellation.fromJson(v))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "rank": rank,
        "name": name,
        "element": element,
        "weaponType": weaponType,
        "icon": icon,
        "birthday":
            birthday == null ? [] : List<dynamic>.from(birthday!.map((x) => x)),
        "release": release,
        "route": route,
        "fetter": fetter?.toJson(),
        "upgrade": upgrade?.toJson(),
        "other": other?.toJson(),
        "ascension": ascension == null
            ? null
            : Map.from(ascension!)
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "talent": talent == null
            ? null
            : Map.from(talent!)
                .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "constellation": constellation == null
            ? null
            : Map.from(constellation!)
                .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
      };
}

class Constellation {
  final String? name;
  final String? description;
  final ExtraData? extraData;
  final String? icon;
  final dynamic id;
  final num? type;

  Constellation({
    this.name,
    this.description,
    this.extraData,
    this.icon,
    this.id,
    this.type,
  });

  factory Constellation.fromJson(Map<String, dynamic> json) => Constellation(
        name: json["name"],
        description: json["description"],
        extraData: json["extraData"] == null
            ? null
            : ExtraData.fromJson(json["extraData"]),
        icon: json["icon"],
        id: json["id"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "extraData": extraData?.toJson(),
        "icon": icon,
        "id": id,
        "type": type,
      };
}

class ExtraData {
  final AddTalentExtraLevel? addTalentExtraLevel;

  ExtraData({
    this.addTalentExtraLevel,
  });

  factory ExtraData.fromJson(Map<String, dynamic> json) => ExtraData(
        addTalentExtraLevel: json["addTalentExtraLevel"] == null
            ? null
            : AddTalentExtraLevel.fromJson(json["addTalentExtraLevel"]),
      );

  Map<String, dynamic> toJson() => {
        "addTalentExtraLevel": addTalentExtraLevel?.toJson(),
      };
}

class AddTalentExtraLevel {
  final String? talentType;
  final num? talentIndex;
  final num? extraLevel;

  AddTalentExtraLevel({
    this.talentType,
    this.talentIndex,
    this.extraLevel,
  });

  factory AddTalentExtraLevel.fromJson(Map<String, dynamic> json) =>
      AddTalentExtraLevel(
        talentType: json["talentType"],
        talentIndex: json["talentIndex"],
        extraLevel: json["extraLevel"],
      );

  Map<String, dynamic> toJson() => {
        "talentType": talentType,
        "talentIndex": talentIndex,
        "extraLevel": extraLevel,
      };
}

class Fetter {
  final String? title;
  final String? detail;
  final String? constellation;
  final String? native;
  final Cv? cv;

  Fetter({
    this.title,
    this.detail,
    this.constellation,
    this.native,
    this.cv,
  });

  factory Fetter.fromJson(Map<String, dynamic> json) => Fetter(
        title: json["title"],
        detail: json["detail"],
        constellation: json["constellation"],
        native: json["native"],
        cv: json["cv"] == null ? null : Cv.fromJson(json["cv"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "detail": detail,
        "constellation": constellation,
        "native": native,
        "cv": cv?.toJson(),
      };
}

class Cv {
  final String? en;
  final String? chs;
  final String? jp;
  final String? kr;

  Cv({
    this.en,
    this.chs,
    this.jp,
    this.kr,
  });

  factory Cv.fromJson(Map<String, dynamic> json) => Cv(
        en: json["EN"],
        chs: json["CHS"],
        jp: json["JP"],
        kr: json["KR"],
      );

  Map<String, dynamic> toJson() => {
        "EN": en,
        "CHS": chs,
        "JP": jp,
        "KR": kr,
      };
}

class Other {
  final List<Costume>? costume;
  final num? furnitureId;
  final Constellation? nameCard;
  final SpecialFood? specialFood;

  Other({
    this.costume,
    this.furnitureId,
    this.nameCard,
    this.specialFood,
  });

  factory Other.fromJson(Map<String, dynamic> json) => Other(
        costume: json["costume"] == null
            ? null
            : List<Costume>.from(
                (json["costume"] as List).map((x) => Costume.fromJson(x))),
        furnitureId: json["furnitureId"],
        nameCard: json["nameCard"] == null
            ? null
            : Constellation.fromJson(json["nameCard"]),
        specialFood: json["specialFood"] == null
            ? null
            : SpecialFood.fromJson(json["specialFood"]),
      );

  Map<String, dynamic> toJson() => {
        "costume": costume == null
            ? null
            : List<dynamic>.from((costume as List).map((x) => x.toJson())),
        "furnitureId": furnitureId,
        "nameCard": nameCard?.toJson(),
        "specialFood": specialFood?.toJson(),
      };
}

class Costume {
  final String? name;
  final String? description;
  final bool? isDefault;

  Costume({
    this.name,
    this.description,
    this.isDefault,
  });

  factory Costume.fromJson(Map<String, dynamic> json) => Costume(
        name: json["name"],
        description: json["description"],
        isDefault: json["isDefault"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "isDefault": isDefault,
      };
}

class SpecialFood {
  final num? id;
  final String? name;
  final num? rank;
  final String? effectIcon;
  final String? icon;

  SpecialFood({
    this.id,
    this.name,
    this.rank,
    this.effectIcon,
    this.icon,
  });

  factory SpecialFood.fromJson(Map<String, dynamic> json) => SpecialFood(
        id: json["id"],
        name: json["name"],
        rank: json["rank"],
        effectIcon: json["effectIcon"],
        icon: json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "rank": rank,
        "effectIcon": effectIcon,
        "icon": icon,
      };
}

class Talent {
  final num? type;
  final String? name;
  final String? description;
  final String? icon;
  final Map<String, PromoteValue>? promote;
  final num? cooldown;
  final num? cost;
  final ExtraData? extraData;
  final dynamic id;

  Talent({
    this.type,
    this.name,
    this.description,
    this.icon,
    this.promote,
    this.cooldown,
    this.cost,
    this.extraData,
    this.id,
  });

  factory Talent.fromJson(Map<String, dynamic> json) => Talent(
        type: json["type"],
        name: json["name"],
        description: json["description"],
        icon: json["icon"],
        promote: json["promote"] == null
            ? null
            : Map.from(json["promote"]).map((k, v) =>
                MapEntry<String, PromoteValue>(k, PromoteValue.fromJson(v))),
        cooldown: json["cooldown"],
        cost: json["cost"],
        extraData: json["extraData"] == null
            ? null
            : ExtraData.fromJson(json["extraData"]),
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "name": name,
        "description": description,
        "icon": icon,
        "promote": promote == null
            ? null
            : Map.from(promote!)
                .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "cooldown": cooldown,
        "cost": cost,
        "extraData": extraData?.toJson(),
        "id": id,
      };
}

class PromoteValue {
  final num? level;
  final Map<String, num>? costItems;
  final num? coinCost;
  final List<String>? description;
  final List<num>? params;

  PromoteValue({
    this.level,
    this.costItems,
    this.coinCost,
    this.description,
    this.params,
  });

  factory PromoteValue.fromJson(Map<String, dynamic> json) => PromoteValue(
        level: json["level"],
        costItems: json["costItems"] == null
            ? null
            : Map.from(json["costItems"])
                .map((k, v) => MapEntry<String, num>(k, v)),
        coinCost: json["coinCost"],
        description: json["description"] == null
            ? null
            : List<String>.from((json["description"] as List).map((x) => x)),
        params: json["params"] == null
            ? null
            : List<num>.from((json["params"] as List).map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "level": level,
        "costItems": costItems == null
            ? null
            : Map.from(costItems!)
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "coinCost": coinCost,
        "description": description == null
            ? null
            : List<dynamic>.from(description!.map((x) => x)),
        "params":
            params == null ? null : List<dynamic>.from(params!.map((x) => x)),
      };
}

class Upgrade {
  final List<Prop>? prop;
  final List<PromoteElement>? promote;

  Upgrade({
    this.prop,
    this.promote,
  });

  factory Upgrade.fromJson(Map<String, dynamic> json) => Upgrade(
        prop: json["prop"] == null
            ? null
            : List<Prop>.from(
                (json["prop"] as List).map((x) => Prop.fromJson(x))),
        promote: json["promote"] == null
            ? null
            : List<PromoteElement>.from((json["promote"] as List)
                .map((x) => PromoteElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "prop": prop == null
            ? null
            : List<dynamic>.from(prop!.map((x) => x.toJson())),
        "promote": promote == null
            ? null
            : List<dynamic>.from(promote!.map((x) => x.toJson())),
      };
}

class PromoteElement {
  final num? unlockMaxLevel;
  final num? promoteLevel;
  final Map<String, num>? costItems;
  final Map<String, dynamic>? addProps;
  final num? requiredPlayerLevel;
  final num? coinCost;

  PromoteElement({
    this.unlockMaxLevel,
    this.promoteLevel,
    this.costItems,
    this.addProps,
    this.requiredPlayerLevel,
    this.coinCost,
  });

  factory PromoteElement.fromJson(Map<String, dynamic> json) => PromoteElement(
        unlockMaxLevel: json["unlockMaxLevel"],
        promoteLevel: json["promoteLevel"],
        costItems: json["costItems"] == null
            ? null
            : Map.from(json["costItems"])
                .map((k, v) => MapEntry<String, num>(k, v)),
        addProps: json["addProps"],
        requiredPlayerLevel: json["requiredPlayerLevel"],
        coinCost: json["coinCost"],
      );

  Map<String, dynamic> toJson() => {
        "unlockMaxLevel": unlockMaxLevel,
        "promoteLevel": promoteLevel,
        "costItems": costItems == null
            ? null
            : Map.from(costItems!)
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "addProps": addProps,
        "requiredPlayerLevel": requiredPlayerLevel,
        "coinCost": coinCost,
      };
}

class Prop {
  final String? propType;
  final num? initValue;
  final String? type;

  Prop({
    this.propType,
    this.initValue,
    this.type,
  });

  factory Prop.fromJson(Map<String, dynamic> json) => Prop(
        propType: json["propType"],
        initValue: json["initValue"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "propType": propType,
        "initValue": initValue,
        "type": type,
      };
}

class CharacterCurve {
  final Map<String, CurveValue>? curve;

  CharacterCurve({
    this.curve,
  });

  factory CharacterCurve.fromJson(Map<String, dynamic> json) => CharacterCurve(
        curve: Map.from(json).map(
            (k, v) => MapEntry<String, CurveValue>(k, CurveValue.fromJson(v))),
      );

  Map<String, dynamic> toJson() => {
        "curve": curve == null
            ? null
            : Map.from(curve!)
                .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
      };
}

class CurveValue {
  final CurveInfos? curveInfos;

  CurveValue({
    this.curveInfos,
  });

  factory CurveValue.fromJson(Map<String, dynamic> json) => CurveValue(
        curveInfos: json["curveInfos"] == null
            ? null
            : CurveInfos.fromJson(json["curveInfos"]),
      );

  Map<String, dynamic> toJson() => {
        "curveInfos": curveInfos?.toJson(),
      };
}

class CurveInfos {
  final num? growCurveHpS4;
  final num? growCurveAttackS4;
  final num? growCurveHpS5;
  final num? growCurveAttackS5;

  CurveInfos({
    this.growCurveHpS4,
    this.growCurveAttackS4,
    this.growCurveHpS5,
    this.growCurveAttackS5,
  });

  factory CurveInfos.fromJson(Map<String, dynamic> json) => CurveInfos(
        growCurveHpS4: json["GROW_CURVE_HP_S4"],
        growCurveAttackS4: json["GROW_CURVE_ATTACK_S4"],
        growCurveHpS5: json["GROW_CURVE_HP_S5"],
        growCurveAttackS5: json["GROW_CURVE_ATTACK_S5"],
      );

  Map<String, dynamic> toJson() => {
        "GROW_CURVE_HP_S4": growCurveHpS4,
        "GROW_CURVE_ATTACK_S4": growCurveAttackS4,
        "GROW_CURVE_HP_S5": growCurveHpS5,
        "GROW_CURVE_ATTACK_S5": growCurveAttackS5,
      };
}
