import 'package:flutter/material.dart';
import 'package:genshinfan/src/home/views/search_bar.dart';
import 'package:get/get.dart';

class LayoutController extends GetxController with GetTickerProviderStateMixin {
  BuildContext context;
  LayoutController({required this.context});

  RxBool loading = false.obs;
  RxInt menu = 0.obs;
  PageController? pageController;
  RxString title = "Genshin Fan".obs;
  List<List<Widget>> actionsHome = [
    [
      IconButton(
        onPressed: () {
          showSearch(context: Get.context!, delegate: HomeSearch());
        },
        icon: const Icon(Icons.search_rounded),
      )
    ],
    [
      IconButton(
        onPressed: () {
          // dialogFilterCharacter();
        },
        icon: const Icon(Icons.filter_alt_rounded),
      )
    ],
    [
      IconButton(
        onPressed: () {
          // dialogFilterWeapon();
        },
        icon: const Icon(Icons.filter_alt_rounded),
      )
    ],
    [
      IconButton(
        onPressed: () {
          // dialogFilterResource();
        },
        icon: const Icon(Icons.filter_alt_rounded),
      )
    ],
    []
  ];

  RxDouble widthScreen = 0.0.obs;
  RxDouble heightScreen = 0.0.obs;

  // item
  RxDouble widthItem = 0.0.obs;
  RxInt crossAxisCount = 1.obs;
  RxDouble childAspectRatio = 1.0.obs;
  RxDouble widthItem3 = 1.0.obs;
  RxInt crossAxisCount3 = 1.obs;
  RxDouble childAspectRatio3 = 1.0.obs;

  void selectMenu(int value) {
    menu.value = value;
    pageController?.jumpToPage(
      value,
      // duration: const Duration(milliseconds: 200),
      // curve: Curves.ease,
    );
  }

  void onChangeTitle() {
    switch (menu.value) {
      case 0:
        title.value = "Genshin Fan";
        break;
      case 1:
        title.value = "character".tr;
        break;
      case 2:
        title.value = "weapon".tr;
        break;
      case 3:
        title.value = "resource".tr;
        break;
      case 4:
        title.value = "other".tr;
        break;
    }
  }

  void setSizeScreen() {
    widthScreen.value = MediaQuery.of(context).size.width;
    heightScreen.value = MediaQuery.of(context).size.height;
  }

  void getWithItem() {
    setSizeScreen();
    double a = widthScreen.value;
    double b = heightScreen.value;
    if (a < b) {
      widthItem.value = a / 4 - 8;
      widthItem3.value = a / 3 - 8;
    } else if (a > b) {
      widthItem.value = b / 4 - 8;
      widthItem3.value = b / 3 - 8;
    } else {
      // a == b
      widthItem.value = a / 4 - 8;
      widthItem3.value = a / 3 - 8;
    }

    crossAxisCount.value = widthScreen.value ~/ (widthItem.value + 4);
    childAspectRatio.value = widthItem.value / (widthItem.value * 1.215);
    crossAxisCount3.value = widthScreen.value ~/ (widthItem3.value + 4);
    childAspectRatio3.value = widthItem3.value / (widthItem3.value * 1.215);
  }

  @override
  void onInit() {
    super.onInit();


    loading.value = true;
    pageController = PageController(initialPage: menu.value, keepPage: true);
    setSizeScreen();
    getWithItem();
    loading.value = false;

    menu.listen((p0) {
      onChangeTitle();
    });
  }
}
