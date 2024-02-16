import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:genshinfan/models/app/response_api.dart';
import 'package:genshinfan/main_controller.dart';
import 'package:genshinfan/models/game/character.dart';
import 'package:genshinfan/utils/config.dart';
import 'package:get/get.dart';

class CharacterService {
  Future<List<Character>> getDatas() async {
    List<Character> datas = [];
    try {
      Dio dio = Dio();
      String language = Get.find<MainController>().language.value;
      final response =
          await dio.get("${Config.apiUrl(langCode: language)}/avatar");
      ResponseApi responseApi = ResponseApi.fromJson(response.data);

      if (responseApi.code == 200) {
        CharactersResponse dataRes =
            CharactersResponse.fromJson(responseApi.data);

        for (var v in dataRes.items.values) {
          Character data = Character.fromJson(v);
          datas.add(data);
        }
      } else {
        log("${responseApi.code}", name: "CharacterService - getDatas");
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
      final response =
          await dio.get("${Config.apiUrl(langCode: language)}/avatar/$id");
      ResponseApi responseApi = ResponseApi.fromJson(response.data);

      if (responseApi.code == 200) {
        Character dataRes = Character.fromJson(responseApi.data);
        return dataRes;
      } else {
        log("${responseApi.code}", name: "CharacterService - getDatas");
      }
    } catch (e) {
      log("$e", name: "CharacterService - getDatas");
    }

    return null;
  }

  Future<CharacterCurve?> getCharacterCurves() async {
    try {
      Dio dio = Dio();
      final response = await dio.get("${Config.apiUrl()}static/avatarCurve");
      ResponseApi responseApi = ResponseApi.fromJson(response.data);

      if (responseApi.code == 200) {
        CharacterCurve dataRes = CharacterCurve.fromJson(responseApi.data);
        return dataRes;
      } else {
        log("${responseApi.code}",
            name: "CharacterService - getCharacterCurve");
      }
    } catch (e) {
      log("$e", name: "CharacterService - getCharacterCurve");
    }

    return null;
  }
}
