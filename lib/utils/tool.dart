class Tool {
  static String getUriUI(String? icon) {
    if (icon != null) {
      return "https://api.ambr.top/assets/UI/$icon.png";
    }
    return "";
  }

  static String handleParameter(num value, String format) {
    String result = value.toString();
    // integer
    if (format.startsWith("I")) {
      result = value.toStringAsFixed(0);
    }
    // percent
    if (format.contains("P")) {
      result = (value * 100.0).toStringAsFixed(0);
    }
    // format số thập phân
    if (format.startsWith("F")) {
      int countFixed = 0;
      if (format.length > 1) {
        countFixed = int.parse(format[1]);
      }
      result = num.parse(result).toStringAsFixed(countFixed);
    }
    // percent thêm %
    if (format.endsWith("P")) {
      result = "$result%";
    }
    return result;
  }

  static String handleParamTalent(String text, List<num>? params) {
    String result = text;
    RegExp rx = RegExp(r'\{(.*?)\}');
    Iterable<Match> matches = rx.allMatches(text);
    for (Match m in matches) {
      String match = m[0]!;
      List<String> paranum = match.substring(1, match.length - 1).split(':');

      int indexParams = int.parse(paranum[0].replaceAll("param", ""));
      if (params != null && params.length >= indexParams) {
        num value = params[indexParams - 1];
        String valueStr = handleParameter(value, paranum[1]);
        result = result.replaceAll("{${paranum[0]}:${paranum[1]}}", valueStr);
      }
    }
    return result;
  }

  static String handleTextCss(String text) {
    String result = text;
    // replace dấu *
    RegExp rx = RegExp(r'\*\*(.*?)\*\*');
    Iterable<Match> matches = rx.allMatches(text);
    for (Match e in matches) {
      String valueBold = e[0]!;
      String content = valueBold.substring(2, valueBold.length - 2);
      content = "<b>$content</b>";
      result = result.replaceAll(valueBold, content);
    }
    result = result.replaceAll("·", "✦ ");
    result = result.replaceAll("<color=#", "<color color=#");
    result = result.replaceAll("\\n", "\n");
    return result;
  }

  static String boldColorText(String text) {
    String result = text;
    result = result.replaceAll("<color=#", "<b><color=#");
    result = result.replaceAll("</color>", "</color></b>");
    return result;
  }

  static String getBackground(dynamic rarity) {
    switch (rarity) {
      case 1 || "1":
        return "assets/images/bg1s.png";
      case 2 || "2":
        return "assets/images/bg2s.png";
      case 3 || "3":
        return "assets/images/bg3s.png";
      case 4 || "4":
        return "assets/images/bg4s.png";
      case 5 || "5":
        return "assets/images/bg5s.png";
    }
    return "assets/images/bg1s.png";
  }

  static String getRarityStar(dynamic rarity) {
    switch (rarity) {
      case 1 || "1":
        return "assets/images/ic_1s.png";
      case 2 || "2":
        return "assets/images/ic_2s.png";
      case 3 || "3":
        return "assets/images/ic_3s.png";
      case 4 || "4":
        return "assets/images/ic_4s.png";
      case 5 || "5":
        return "assets/images/ic_5s.png";
    }
    return "assets/images/ic_1s.png";
  }

  static String getAssetElement(dynamic element) {
    if (element == "Wind") {
      return "assets/images/element_anemo.png";
    }
    if (element == "Rock") {
      return "assets/images/element_geo.png";
    }
    if (element == "Electric") {
      return "assets/images/element_electro.png";
    }
    if (element == "Grass") {
      return "assets/images/element_dendro.png";
    }
    if (element == "Fire") {
      return "assets/images/element_pyro.png";
    }
    if (element == "Water") {
      return "assets/images/element_hydro.png";
    }
    if (element == "Ice") {
      return "assets/images/element_cryo.png";
    }
    return "";
  }

  static String getAssetWeapon(dynamic weapon) {
    if (weapon == "WEAPON_SWORD_ONE_HAND") {
      return "assets/images/UI_GachaTypeIcon_Sword.png";
    }
    if (weapon == "WEAPON_BOW") {
      return "assets/images/UI_GachaTypeIcon_Bow.png";
    }
    if (weapon == "WEAPON_CLAYMORE") {
      return "assets/images/UI_GachaTypeIcon_Claymore.png";
    }
    if (weapon == "WEAPON_CATALYST") {
      return "assets/images/UI_GachaTypeIcon_Catalyst.png";
    }
    if (weapon == "WEAPON_POLE") {
      return "assets/images/UI_GachaTypeIcon_Pole.png";
    }
    return "";
  }

  static bool isElementProp(String special) {
    if (special == "FIGHT_PROP_ROCK_ADD_HURT" ||
        special == "FIGHT_PROP_ICE_ADD_HURT" ||
        special == "FIGHT_PROP_ELEC_ADD_HURT" ||
        special == "FIGHT_PROP_FIRE_ADD_HURT" ||
        special == "FIGHT_PROP_WATER_ADD_HURT" ||
        special == "FIGHT_PROP_WIND_ADD_HURT" ||
        special == "FIGHT_PROP_GRASS_ADD_HURT") {
      return true;
    }
    return false;
  }

  static String getAssetSpecial(String special) {
    if (special == "FIGHT_PROP_ATTACK_PERCENT") {
      return "assets/images/ic_attack_per.png";
    }
    if (special == "FIGHT_PROP_HEAL_ADD") {
      return "assets/images/ic_heal.png";
    }
    if (special == "FIGHT_PROP_DEFENSE_PERCENT") {
      return "assets/images/ic_def.png";
    }
    if (special == "FIGHT_PROP_PHYSICAL_ADD_HURT") {
      return "assets/images/ic_physical.png";
    }
    if (special == "FIGHT_PROP_ELEMENT_MASTERY") {
      return "assets/images/ic_element_mastery.png";
    }
    if (special == "FIGHT_PROP_CHARGE_EFFICIENCY") {
      return "assets/images/ic_charge_efficiency.png";
    }
    if (special == "FIGHT_PROP_HP_PERCENT") {
      return "assets/images/ic_hp_percent.png";
    }
    if (special == "FIGHT_PROP_CRITICAL") {
      return "assets/images/ic_crit_rate.png";
    }
    if (special == "FIGHT_PROP_CRITICAL_HURT") {
      return "assets/images/ic_crit_dmg.png";
    }
    if (special == "FIGHT_PROP_ROCK_ADD_HURT") {
      return "assets/images/element_geo.png";
    }
    if (special == "FIGHT_PROP_ICE_ADD_HURT") {
      return "assets/images/element_cryo.png";
    }
    if (special == "FIGHT_PROP_ELEC_ADD_HURT") {
      return "assets/images/element_electro.png";
    }
    if (special == "FIGHT_PROP_FIRE_ADD_HURT") {
      return "assets/images/element_pyro.png";
    }
    if (special == "FIGHT_PROP_WATER_ADD_HURT") {
      return "assets/images/element_hydro.png";
    }
    if (special == "FIGHT_PROP_WIND_ADD_HURT") {
      return "assets/images/element_anemo.png";
    }
    if (special == "FIGHT_PROP_GRASS_ADD_HURT") {
      return "assets/images/element_dendro.png";
    }
    return "";
  }

  static String getItemIconUri(dynamic id) {
    return "https://api.ambr.top/assets/UI/UI_ItemIcon_$id.png";
  }
}
