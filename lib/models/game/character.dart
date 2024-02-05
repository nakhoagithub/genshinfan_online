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
