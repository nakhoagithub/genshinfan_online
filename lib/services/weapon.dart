import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:genshinfan/models/app/response_api.dart';
import 'package:genshinfan/main_controller.dart';
import 'package:genshinfan/models/game/weapon.dart';
import 'package:genshinfan/utils/config.dart';
import 'package:get/get.dart';

class WeaponService {
  Future<List<Weapon>> getDatas() async {
    List<Weapon> datas = [];
    try {
      Dio dio = Dio();
      String language = Get.find<MainController>().language.value;
      final response = await dio.get("${Config.apiUrl(language)}/weapon");
      ResponseApi responseApi = ResponseApi.fromJson(response.data);

      if (responseApi.code == 200) {
        WeaponsResponse dataRes = WeaponsResponse.fromJson(responseApi.data);

        for (var v in dataRes.items.values) {
          Weapon data = Weapon.fromJson(v);
          datas.add(data);
        }
      } else {
        log("${responseApi.toJson()}", name: "WeaponService - getDatas");
      }
    } catch (e) {
      log("$e", name: "WeaponService - getDatas");
    }
    return datas;
  }

  Future<Weapon?> getData(dynamic id) async {
    try {
      Dio dio = Dio();
      String language = Get.find<MainController>().language.value;
      final response = await dio.get("${Config.apiUrl(language)}/weapon/$id");
      ResponseApi responseApi = ResponseApi.fromJson(response.data);

      if (responseApi.code == 200) {
        Weapon dataRes = Weapon.fromJson(responseApi.data);
        return dataRes;
      } else {
        log("${responseApi.toJson()}", name: "WeaponService - getDatas");
      }
    } catch (e) {
      log("$e", name: "WeaponService - getDatas");
    }

    return null;
  }
}
