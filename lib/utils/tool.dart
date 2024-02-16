class Tool {
  static String getBackground(String? rarity) {
    switch (rarity) {
      case "1":
        return "assets/images/bg1s.png";
      case "2":
        return "assets/images/bg2s.png";
      case "3":
        return "assets/images/bg3s.png";
      case "4":
        return "assets/images/bg4s.png";
      case "5":
        return "assets/images/bg5s.png";
    }
    return "assets/images/bg1s.png";
  }

  static String getRarityStar(String? rarity) {
    switch (rarity) {
      case "1":
        return "assets/images/ic_1s.png";
      case "2":
        return "assets/images/ic_2s.png";
      case "3":
        return "assets/images/ic_3s.png";
      case "4":
        return "assets/images/ic_4s.png";
      case "5":
        return "assets/images/ic_5s.png";
    }
    return "assets/images/ic_1s.png";
  }
}
