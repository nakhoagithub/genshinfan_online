class Config {
  static String appName = "Genshin Fan";
  static String apiUrl({String? langCode}) {
    if (langCode != null) {
      return "https://api.ambr.top/v2/$langCode/";
    }
    return "https://api.ambr.top/v2/";
  }

  static String uriMora = "https://api.ambr.top/assets/UI/UI_ItemIcon_202.png";

  static const String darkMode = "keyDarkMode";
  static const String languageApp = 'keyLanguageApp';

  static const double fontSizeTrailingTextInfo = 16;
}
