import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:genshinfan/src/home/pages/character/views/character_page.dart';
import 'package:genshinfan/main_controller.dart';
import 'package:genshinfan/src/start/views/start_page.dart';
import 'package:genshinfan/utils/init.dart';
import 'package:genshinfan/utils/localization.dart';
import 'package:genshinfan/utils/theme.dart';
import 'package:get/get.dart';

void main() async {
  await init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    MainController mainController = Get.put(MainController());
    return GetBuilder(
      init: mainController,
      builder: (controller) {
        context.theme;
        return GetMaterialApp(
          theme: mainController.themeData.value,
          darkTheme: ThemeApp.dark(),
          themeMode: ThemeApp.themeMode,

          // locale
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          locale: Localization.locale,
          fallbackLocale: Localization.fallbackLocale,
          translations: Localization(),
          enableLog: false,
          initialRoute: '/',
          getPages: [
            GetPage(
              name: '/',
              page: () => const StartPage(),
            ),
            GetPage(name: "/character", page: () => const CharacterPage()),
          ],
        );
      },
    );
  }
}
