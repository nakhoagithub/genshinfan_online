class WeaponsResponse {
  final WeaponWeaponType types;
  final Map<String, dynamic> items;

  const WeaponsResponse({
    required this.types,
    required this.items,
  });

  factory WeaponsResponse.fromJson(Map<String, dynamic> json) =>
      WeaponsResponse(
        types: WeaponWeaponType.fromJson(json["types"]),
        items: json["items"],
      );

  Map<String, dynamic> toJson() => {
        "types": types.toJson(),
        "items": items,
      };
}

class WeaponWeaponType {
  final String weaponSwordOneHand;
  final String weaponCatalyst;
  final String weaponClaymore;
  final String weaponBow;
  final String weaponPole;

  WeaponWeaponType({
    required this.weaponSwordOneHand,
    required this.weaponCatalyst,
    required this.weaponClaymore,
    required this.weaponBow,
    required this.weaponPole,
  });

  factory WeaponWeaponType.fromJson(Map<String, dynamic> json) =>
      WeaponWeaponType(
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

class Weapon {
  final dynamic id;
  final num? rank;
  final String? type;
  final String? name;
  final String? description;
  final String? icon;
  final List<String>? storyId;
  final Map<String, Affix>? affix;
  final String? route;
  final Upgrade? upgrade;
  final Map<String, num>? ascension;

  Weapon({
    this.id,
    this.rank,
    this.type,
    this.name,
    this.description,
    this.icon,
    this.storyId,
    this.affix,
    this.route,
    this.upgrade,
    this.ascension,
  });

  factory Weapon.fromJson(Map<String, dynamic> json) => Weapon(
        id: json["id"],
        rank: json["rank"],
        type: json["type"],
        name: json["name"],
        description: json["description"],
        icon: json["icon"],
        storyId: json["storyId"] == null
            ? null
            : List<String>.from((json["storyId"] as List).map((x) => x)),
        affix: json["affix"] == null
            ? null
            : Map.from(json["affix"])
                .map((k, v) => MapEntry<String, Affix>(k, Affix.fromJson(v))),
        route: json["route"],
        upgrade:
            json["upgrade"] == null ? null : Upgrade.fromJson(json["upgrade"]),
        ascension: json["ascension"] == null
            ? null
            : Map.from(json["ascension"])
                .map((k, v) => MapEntry<String, num>(k, v)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "rank": rank,
        "type": type,
        "name": name,
        "description": description,
        "icon": icon,
        "storyId":
            storyId == null ? null : List<dynamic>.from(storyId!.map((x) => x)),
        "affix": affix == null
            ? null
            : Map.from(affix!)
                .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "route": route,
        "upgrade": upgrade?.toJson(),
        "ascension": ascension == null
            ? null
            : Map.from(ascension!)
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
      };
}

class Affix {
  final String? name;
  final Map<String, String>? upgrade;

  Affix({
    this.name,
    this.upgrade,
  });

  factory Affix.fromJson(Map<String, dynamic> json) => Affix(
        name: json["name"],
        upgrade: json["upgrade"] == null
            ? null
            : Map.from(json["upgrade"])
                .map((k, v) => MapEntry<String, String>(k, v)),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "upgrade": upgrade == null
            ? null
            : Map.from(upgrade!).map((k, v) => MapEntry<String, dynamic>(k, v)),
      };
}

class Upgrade {
  final List<num>? awakenCost;
  final List<Prop>? prop;
  final List<Promote>? promote;

  Upgrade({
    this.awakenCost,
    this.prop,
    this.promote,
  });

  factory Upgrade.fromJson(Map<String, dynamic> json) => Upgrade(
        awakenCost: json["awakenCost"] == null
            ? null
            : List<num>.from((json["awakenCost"] as List).map((x) => x)),
        prop: json["prop"] == null
            ? null
            : List<Prop>.from(
                (json["prop"] as List).map((x) => Prop.fromJson(x))),
        promote: json["promote"] == null
            ? null
            : List<Promote>.from(
                (json["promote"] as List).map((x) => Promote.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "awakenCost": awakenCost == null
            ? null
            : List<dynamic>.from(awakenCost!.map((x) => x)),
        "prop": prop == null
            ? null
            : List<dynamic>.from(prop!.map((x) => x.toJson())),
        "promote": promote == null
            ? null
            : List<dynamic>.from(promote!.map((x) => x.toJson())),
      };
}

class Promote {
  final num? unlockMaxLevel;
  final num? promoteLevel;
  final Map<String, num>? costItems;
  final num? coinCost;
  final AddProps? addProps;
  final num? requiredPlayerLevel;

  Promote({
    this.unlockMaxLevel,
    this.promoteLevel,
    this.costItems,
    this.coinCost,
    this.addProps,
    this.requiredPlayerLevel,
  });

  factory Promote.fromJson(Map<String, dynamic> json) => Promote(
        unlockMaxLevel: json["unlockMaxLevel"],
        promoteLevel: json["promoteLevel"],
        costItems: json["costItems"] == null
            ? null
            : Map.from(json["costItems"])
                .map((k, v) => MapEntry<String, num>(k, v)),
        coinCost: json["coinCost"],
        addProps: json["addProps"] == null
            ? null
            : AddProps.fromJson(json["addProps"]),
        requiredPlayerLevel: json["requiredPlayerLevel"],
      );

  Map<String, dynamic> toJson() => {
        "unlockMaxLevel": unlockMaxLevel,
        "promoteLevel": promoteLevel,
        "costItems": costItems == null
            ? null
            : Map.from(costItems!)
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "coinCost": coinCost,
        "addProps": addProps?.toJson(),
        "requiredPlayerLevel": requiredPlayerLevel,
      };
}

class AddProps {
  final num? fightPropBaseAttack;
  final num? fightPropCritical;
  final num? fightPropCriticalHurt;
  final num? fightPropChargeEfficiency;
  final num? fightPropElementMastery;

  AddProps({
    this.fightPropBaseAttack,
    this.fightPropCritical,
    this.fightPropCriticalHurt,
    this.fightPropChargeEfficiency,
    this.fightPropElementMastery,
  });

  factory AddProps.fromJson(Map<String, dynamic> json) => AddProps(
        fightPropBaseAttack: json["FIGHT_PROP_BASE_ATTACK"],
        fightPropCritical: json["FIGHT_PROP_CRITICAL"],
        fightPropCriticalHurt: json["FIGHT_PROP_CRITICAL_HURT"],
        fightPropChargeEfficiency: json["FIGHT_PROP_CHARGE_EFFICIENCY"],
        fightPropElementMastery: json["FIGHT_PROP_ELEMENT_MASTERY"],
      );

  Map<String, dynamic> toJson() => {
        "FIGHT_PROP_BASE_ATTACK": fightPropBaseAttack,
        "FIGHT_PROP_CRITICAL": fightPropCritical,
        "FIGHT_PROP_CRITICAL_HURT": fightPropCriticalHurt,
        "FIGHT_PROP_CHARGE_EFFICIENCY": fightPropChargeEfficiency,
        "FIGHT_PROP_ELEMENT_MASTERY": fightPropElementMastery,
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
