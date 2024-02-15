import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:genshinfan/models/app/response_api.dart';
import 'package:genshinfan/main_controller.dart';
import 'package:genshinfan/models/game/character.dart';
import 'package:genshinfan/utils/config.dart';
import 'package:get/get.dart';

class CharacterService {
  Future<List<CharacterView>> getDatas() async {
    List<CharacterView> datas = [];
    try {
      Dio dio = Dio();
      String language = Get.find<MainController>().language.value;
      final response = await dio.get("${Config.apiUrl(language)}/avatar");
      ResponseApi responseApi = ResponseApi.fromJson(response.data);

      if (responseApi.code == 200) {
        CharactersResponse dataRes =
            CharactersResponse.fromJson(responseApi.data);

        for (var v in dataRes.items.values) {
          CharacterView d = CharacterView.fromJson(v);
          datas.add(d);
        }
      } else {
        log("${responseApi.toJson()}", name: "CharacterService - getDatas");
      }
    } catch (e) {
      log("$e", name: "CharacterService - getDatas");
    }
    return datas;
  }

  Future<Character?> getData(dynamic id) async {
    try {
      Dio dio = Dio();
      String language = Get.find<MainController>().language.value;
      final response = await dio.get("${Config.apiUrl(language)}/avatar/$id");
      ResponseApi responseApi = ResponseApi.fromJson(response.data);

      if (responseApi.code == 200) {
        Character dataRes = Character.fromJson(responseApi.data);
        return dataRes;
      } else {
        log("${responseApi.toJson()}", name: "CharacterService - getDatas");
      }
    } catch (e) {
      log("$e", name: "CharacterService - getDatas");
    }

    return null;
  }
}
