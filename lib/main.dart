import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:genshinfan/src/home/controllers/layout_controller.dart';
import 'package:genshinfan/src/home/pages/character/views/character_info_page.dart';
import 'package:genshinfan/main_controller.dart';
import 'package:genshinfan/src/home/views/home_page.dart';
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
    LayoutController layoutController =
        Get.put(LayoutController(context: context));

    return GetBuilder(
      init: mainController,
      builder: (controller) {
        return OrientationBuilder(
          builder: (context, orientation) {
            context.theme;
            layoutController.getWithItem();
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
                GetPage(
                  name: '/home',
                  page: () => const HomePage(),
                ),
                GetPage(
                  name: '/character-info',
                  page: () => const CharacterInfoPage(),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
