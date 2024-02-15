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

class CharacterView {
  final dynamic id;
  final int rank;
  final String name;
  final String element;
  final String weaponType;
  final String icon;
  final List<int> birthday;
  final int? release;
  final String route;

  CharacterView({
    required this.id,
    required this.rank,
    required this.name,
    required this.element,
    required this.weaponType,
    required this.icon,
    required this.birthday,
    required this.release,
    required this.route,
  });

  factory CharacterView.fromJson(Map<String, dynamic> json) => CharacterView(
        id: json["id"],
        rank: json["rank"],
        name: json["name"],
        element: json["element"],
        weaponType: json["weaponType"],
        icon: json["icon"],
        birthday:
            List<int>.from((json["birthday"] as List? ?? []).map((x) => x)),
        release: json["release"],
        route: json["route"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "rank": rank,
        "name": name,
        "element": element,
        "weaponType": weaponType,
        "icon": icon,
        "birthday": List<dynamic>.from(birthday.map((x) => x)),
        "release": release,
        "route": route,
      };
}

class Character {
  final int? id;
  final int? rank;
  final String? name;
  final String? element;
  final String? weaponType;
  final String? icon;
  final List<int>? birthday;
  final int? release;
  final String? route;
  final Fetter? fetter;
  final Upgrade? upgrade;
  final Other? other;
  final Map<String, int>? ascension;
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
            : List<int>.from((json["birthday"] as List).map((x) => x)),
        release: json["release"],
        route: json["route"],
        fetter: json["fetter"] == null ? null : Fetter.fromJson(json["fetter"]),
        upgrade:
            json["upgrade"] == null ? null : Upgrade.fromJson(json["upgrade"]),
        other: json["other"] == null ? null : Other.fromJson(json["other"]),
        ascension: json["ascension"] == null
            ? null
            : Map.from(json["ascension"])
                .map((k, v) => MapEntry<String, int>(k, v)),
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
  final int? id;
  final int? type;

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
  final int? talentIndex;
  final int? extraLevel;

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
  final int? furnitureId;
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
  final int? id;
  final String? name;
  final int? rank;
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
  final int? type;
  final String? name;
  final String? description;
  final String? icon;
  final Map<String, PromoteValue>? promote;
  final int? cooldown;
  final int? cost;
  final ExtraData? extraData;
  final int? id;

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
  final int? level;
  final Map<String, int>? costItems;
  final int? coinCost;
  final List<String>? description;
  final List<double>? params;

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
                .map((k, v) => MapEntry<String, int>(k, v)),
        coinCost: json["coinCost"],
        description: json["description"] == null
            ? null
            : List<String>.from((json["description"] as List).map((x) => x)),
        params: json["params"] == null
            ? null
            : List<double>.from(
                (json["params"] as List).map((x) => x.toDouble())),
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
  final int? unlockMaxLevel;
  final int? promoteLevel;
  final Map<String, int>? costItems;
  final AddProps? addProps;
  final int? requiredPlayerLevel;
  final int? coinCost;

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
                .map((k, v) => MapEntry<String, int>(k, v)),
        addProps: json["addProps"] == null
            ? null
            : AddProps.fromJson(json["addProps"]),
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
        "addProps": addProps?.toJson(),
        "requiredPlayerLevel": requiredPlayerLevel,
        "coinCost": coinCost,
      };
}

class AddProps {
  final double? fightPropBaseHp;
  final double? fightPropBaseDefense;
  final double? fightPropBaseAttack;
  final double? fightPropAttackPercent;

  AddProps({
    this.fightPropBaseHp,
    this.fightPropBaseDefense,
    this.fightPropBaseAttack,
    this.fightPropAttackPercent,
  });

  factory AddProps.fromJson(Map<String, dynamic> json) => AddProps(
        fightPropBaseHp: json["FIGHT_PROP_BASE_HP"] == null
            ? null
            : (json["FIGHT_PROP_BASE_HP"] as num).toDouble(),
        fightPropBaseDefense: json["FIGHT_PROP_BASE_DEFENSE"] == null
            ? null
            : (json["FIGHT_PROP_BASE_DEFENSE"] as num).toDouble(),
        fightPropBaseAttack: json["FIGHT_PROP_BASE_ATTACK"] == null
            ? null
            : (json["FIGHT_PROP_BASE_ATTACK"] as num).toDouble(),
        fightPropAttackPercent: json["FIGHT_PROP_ATTACK_PERCENT"] == null
            ? null
            : (json["FIGHT_PROP_ATTACK_PERCENT"] as num).toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "FIGHT_PROP_BASE_HP": fightPropBaseHp,
        "FIGHT_PROP_BASE_DEFENSE": fightPropBaseDefense,
        "FIGHT_PROP_BASE_ATTACK": fightPropBaseAttack,
        "FIGHT_PROP_ATTACK_PERCENT": fightPropAttackPercent,
      };
}

class Prop {
  final String? propType;
  final double? initValue;
  final String? type;

  Prop({
    this.propType,
    this.initValue,
    this.type,
  });

  factory Prop.fromJson(Map<String, dynamic> json) => Prop(
        propType: json["propType"],
        initValue: json["initValue"] == null
            ? null
            : (json["initValue"] as num).toDouble(),
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "propType": propType,
        "initValue": initValue,
        "type": type,
      };
}
