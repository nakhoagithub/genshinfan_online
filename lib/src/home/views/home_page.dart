import 'package:flutter/material.dart';
import 'package:genshinfan/src/home/controllers/layout_controller.dart';
import 'package:genshinfan/src/home/pages/character/views/character_page.dart';
import 'package:genshinfan/utils/config.dart';
import 'package:genshinfan/widgets/icon_app.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    context.theme;
    LayoutController layoutController = Get.find<LayoutController>();
    GlobalKey<ScaffoldState> key = GlobalKey();
    return Scaffold(
      key: key,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: IconApp(
          onTap: () {
            key.currentState?.openDrawer();
          },
          icon: const Icon(Icons.menu_rounded),
        ),
        title: Text(Config.appName),
        actions: [
          Obx(() {
            int menu = layoutController.menu.value;
            return Wrap(
              children: [...layoutController.actionsHome[menu]],
            );
          }),

          // IconButton(
          //   onPressed: () {},
          //   icon: const Icon(Icons.search),
          // ),
        ],
      ),
      body: const _Body(),
      bottomNavigationBar: Obx(() {
        int currentIndex = layoutController.menu.value;
        return BottomNavigationBar(
          selectedItemColor: Get.theme.primaryColor,
          selectedIconTheme: IconThemeData(color: Get.theme.primaryColor),
          onTap: (value) {
            layoutController.selectMenu(value);
          },
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset(
                  "assets/icons/play_store_512.png",
                  // color: currentIndex == 0 ? Get.theme.primaryColor : null,
                  height: 40,
                  width: 40,
                ),
              ),
              label: "home".tr,
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/UI_HomeWorldTabIcon_2_Character.png",
                color: currentIndex == 1
                    ? Get.theme.primaryColor
                    : Get.theme.colorScheme.onSurface.withOpacity(0.7),
                height: 40,
                width: 40,
              ),
              label: "character".tr,
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/UI_TheatreMechanicus_Icon_Mechanism.png",
                color: currentIndex == 2
                    ? Get.theme.primaryColor
                    : Get.theme.colorScheme.onSurface.withOpacity(0.7),
                height: 40,
                width: 40,
              ),
              label: "weapon".tr,
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/UI_Icon_Activity_DoubleReward.png",
                color: currentIndex == 3
                    ? Get.theme.primaryColor
                    : Get.theme.colorScheme.onSurface.withOpacity(0.7),
                height: 40,
                width: 40,
              ),
              label: "resource".tr,
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/UI_Icon_BP_StoryTab.png",
                color: currentIndex == 4
                    ? Get.theme.primaryColor
                    : Get.theme.colorScheme.onSurface.withOpacity(0.7),
                height: 40,
                width: 40,
              ),
              label: "other".tr,
            ),
          ],
        );
      }),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    LayoutController layoutController = Get.find<LayoutController>();
    return PageView(
      controller: layoutController.pageController,
      children: [
        Container(color: Colors.red),
        const CharacterPage(),
        Container(color: Colors.yellowAccent),
        Container(color: Colors.green),
        Container(color: Colors.red),
      ],
    );
  }
}
