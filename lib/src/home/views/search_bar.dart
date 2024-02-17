import 'package:flutter/material.dart';
import 'package:genshinfan/widgets/back_button.dart';

import 'package:get/get.dart';

class HomeSearch extends SearchDelegate {
  @override
  String? get searchFieldLabel => "search".tr;

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          if (query.isEmpty) {
            close(context, null);
          } else {
            query = "";
          }
        },
        icon: const Icon(Icons.clear_rounded),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const BackButtonApp(),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // SearchAppController searchAppController = Get.find<SearchAppController>();
    // String valueSearch = Tool.removeDiacritics(query.toLowerCase());
    // List<Character> characters =
    //     searchAppController.searchCharacter(valueSearch);
    // List<Weapon> weapons = searchAppController.searchWeapon(valueSearch);
    // List<Artifact> artifacts = searchAppController.searchArtifact(valueSearch);
    // List<Food> foods = searchAppController.searchFood(valueSearch);
    // List<Resource> resources = searchAppController.searchResource(valueSearch);
    // List<Enemy> enemies = searchAppController.searchEnemies(valueSearch);
    // List<Animal> animals = searchAppController.searchAnimal(valueSearch);
    return SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: query == "" ? const SizedBox() : const SizedBox()
        // : Column(
        //     children: [
        //       ListCharacter(characters: characters),
        //       ListWeapon(weapons: weapons),
        //       ListArtifact(artifacts: artifacts),
        //       ListResource(resources: resources),
        //       ListFood(foods: foods),
        //       ListAnimal(animals: animals),
        //       ListEnemy(enemies: enemies),
        //       const SizedBox(height: 100),
        //     ],
        //   ),
        );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // List<String> recomments = Get.find<SearchAppController>().recomments;
    // List<String> searchs = recomments.where((element) {
    //   final result = Tool.removeDiacritics(element.toLowerCase());
    //   final input = Tool.removeDiacritics(query.toLowerCase());
    //   return result.contains(input);
    // }).toList();
    // return Scrollbar(
    //   controller: Get.find<SearchAppController>().scrollController,
    //   child: ListView.builder(
    //     itemCount: searchs.length,
    //     itemBuilder: (context, index) {
    //       return _ItemRecommentSearch(
    //           value: searchs[index],
    //           onTap: () {
    //             query = searchs[index];
    //             showSuggestions(context);
    //           });
    //     },
    //   ),
    // );
    return SizedBox();
  }
}

class _ItemRecommentSearch extends StatelessWidget {
  final String value;
  final VoidCallback onTap;
  const _ItemRecommentSearch({
    required this.value,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(value),
      onTap: onTap,
    );
  }
}
