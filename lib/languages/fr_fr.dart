import 'dart:ui';

import 'package:genshinfan/models/app/language.dart';

// Pháp

const french = Language(
  languageCode: "French",
  language: "Français",
  locale: Locale("fr", 'FR'),
);

const Map<String, String> fr = {
  "welcome_to_app": "Welcome to Genshin Fan",
  "version": "Version @version",

  "loading": "Chargement...",
  "downloading": "@percent% Téléchargé.",
  "decompressing": "Décompresser...",
  "processing": "Traitement",
  "checking": "Vérification",
  "no_data_version": "Il n'y a pas de nouvelle version des données.",
  "update_new_data": "Mettre à jour les nouvelles données.",
  "complete": "Complet!",
  "wait_a_minute": "Attendez une minute",
  "data_failure":
      "Impossible de charger les données! Veuillez activer le réseau.",
  "not_internet": "La connexion Internet a échoué!",
  "setting": "Paramètres",
  "dark_theme": "Thème sombre",
  "change_language": "Changer de langue",
  "select_language": "Choisissez la langue",
  "teyvat_resource": "Ressources de Teyvat",
  "select_character": "Veuillez choisir un personnage",
  "rarity": "Rareté",
  "especially": "En particulier",
  "information": "Information",
  "character_information": "Informations sur le personnage",
  "substat": "Sous-stat",
  "gender": "Genre",
  "birthday": "Anniversaire",
  "travelerBirthday": "Anniversaire du voyageur",
  "affiliation": "Affiliation",
  "region": "Région",
  "description": "Description",
  "level": "Niveau",
  "resource": "Ressource",
  "weapon_information": "Informations sur l'arme",
  "talent_stats": "Statistiques de compétence",
  "select_weapon": "Veuillez choisir une arme",
  "refinement": "Raffinement",
  "type": "Taper",
  "story": "Histoire",
  "effectname": "Nom de l'effet",
  "resource_information": "Informations sur les ressources",
  "select_resource": "Veuillez choisir la ressource",
  "dupealias": "Plus d'information",
  "source": "Source",
  "artifact_information": "Artéfacts Information",
  "select_artifact": "Veuillez choisir Artéfacts",
  "set1": "Activer 1 article",
  "set2": "Activer le jeu de 2",
  "set4": "Activer le jeu de 4",
  "domain_information": "Donjons Information",
  "select_domain": "Veuillez choisir Donjons",
  "domainentrance": "Entrée",
  "recommendedlevel": "Niveau recommandé",
  "unlockrank": "Débloquer le rang",
  "recommendedelements": "Élément recommandé",
  "disorder": "Désordre",
  "reward": "Récompense",
  "select_enemy": "Veuillez choisir Ennemis",
  "enemy_information": "Informations sur l'ennemi",
  "monster": "Monstre",
  "specialname": "Nom spécial",
  "notification": "Notification",
  "notification_change_language":
      "Après avoir changé la langue, l'application redémarrera pour charger les données dans la langue de votre choix.",
  "cancel": "Annuler",
  "ok": "Accepter",
  "double_click_exit": "Appuyez à nouveau pour quitter",
  "today": "Aujourd'hui",
  "birthday_in_month": "Les anniversaires du mois",
  "option": "Option",
  "success": "Avec succès",
  "not": "Pas",
  "note": "Note",
  "daily_reset_time":
      "<b>Réinitialisation quotidienne</b> a lieu toutes les 04h00 (4h00), en fonction de l'heure du fuseau horaire du serveur.\n\n - Server Asia (AS): GMT+8\n - Server Europe (EU): GMT+1\n - Server America ( NA): GMT-5",
  "character_up_today":
      "Les personnages peuvent trouver des matériaux d'amélioration pendant la journée.",
  "weapon_up_today":
      "Les armes peuvent trouver des matériaux de mise à niveau pendant la journée.",

  "notification_open_genshin_map":
      "Voulez-vous ouvrir <b>Genshin Map</b> dans le navigateur?",
  "update": "Mise à jour",
  "check_update": "Vérifiez la mise à jour des données.",
  "description_update_setting":
      "Vérifier et mettre à jour les données de l'application.",
  "contribute": "Contribuer",
  "character_building": "Créer le personnage",
  "contribute_translation": "Contribuer aux traductions",
  "send_feedback": "Envoyer des commentaires",
  "description_send_feedback": "Envoyez un e-mail au développeur.",
  "other": "Autre",
  "join_discord": "Rejoignez le serveur Discord.",
  "confirm": "Confirmer",
  "access_throughput": "Débit d'accès",
  "total": "Total",
  "this_month": "Ce mois-ci",
  "set2_artifact": "Ensemble de 2 artefacts",
  "set4_artifact": "Ensemble de 4 artefacts",
  "sands_effect": "Effet sable",
  "goblet_effect": "Effet gobelet",
  "circlet_effect": "Effet cercle",
  "user_information": "Informations de l'utilisateur",
  "login": "Connexion",
  "logout_question": "Voulez-vous vous déconnecter?",
  "refresh_traffic": "Actualiser le trafic?",
  "required_login": "Vous devez vous connecter pour exécuter cette fonction.",
  "admin": "Administrateur",
  "admin_description": "Gestion des applications",
  "user_management": "Gestion des utilisateurs",
  "data_management": "Gestion de données",
  "manager": "Directeur",
  "contribution_character": "Caractère de contribution",
  "role_and_data_user": "Droits et données des utilisateurs.",
  "manage_user_character_contribution":
      "Gérer la contribution de personnage de l'utilisateur.",
  "select_full_info": "Vous devez sélectionner toutes les informations.",
  "author": "Auteur",
  "invalid": "Invalide",
  "delete": "Supprimer",
  "delete_contribute": "Supprimer cette contribution d'utilisateur?",
  "add_contribute_to_database":
      "Ajouter cette contribution à la base de données?",
  "delete_contribute_to_database": "Supprimer cette contribution?",
  "contribute_manage_empty": "Aucune contribution pour le moment",
  "censor": "Censurer",
  "member": "Membre",
  "permission": "Autorisation",
  "permission_denied": "Permission refusée",
  "error": "Erreur",
  "note_contribute_character_building":
      "Ces données fournies seront examinées et approuvées par les modérateurs.",
  "timeout_exception": "Exception de dépassement de délai",
  "reset": "Réinitialiser",
  "filter_character": "Filter Character",
  "filter_weapon": "Filtrer l'arme",
  "filter_artifact": "Filtre d'artefact",
  "filter_domain": "Filtrer le donjon",
  "filter_resource": "Filtrer les ressources de Teyvat",
  "filter_enemy": "Filtrer l'ennemi",
  "reset_filter_comfirm": "Voulez-vous réinitialiser le filtre?",
  "sort_name": "Trier par nom",
  "filter_with_rarity": "Filtrer par une seule rareté",
  "empty_character": "Aucun caractère",
  "empty_artifact": "Aucun artefact",
  "empty_resource": "Aucune ressource de Teyvat",
  "empty_weapon": "Pas d'arme",
  "all": "Tous",
  "online": "En ligne",

  "category": "Catégorie",
  "animal_information": "Informations sur les animaux",
  "select_animal": "Veuillez sélectionner un animal",
  "achievement_information": "Informations sur la réalisation",
  "select_achievement": "Veuillez sélectionner une réalisation",
  "namecard_information": "Informations sur la carte de visite",
  "select_namecard": "Veuillez sélectionner une carte de visite",
  "craft": "Artisanat",
  "craft_information": "Informations sur le métier",
  "select_craft": "Veuillez sélectionner un métier",
  "recipe": "Recette",
  "outfit_information": "Informations sur la tenue",
  "select_outfit": "Veuillez choisir une tenue",
  "geography": "Zone géographique",
  "geography_information": "Informations géographiques",
  "select_geography": "Veuillez sélectionner une zone géographique",
  "windglider_information": "Informations sur l'aile",
  "select_windglider": "Veuillez sélectionner une aile",
  "extract_failure": "Erreur lors de l'extraction des données",
  "delete_data_and_redownload": "Supprimer les données et recharger",
  "data_failure_wait_for_new_update":
      "Les données actuelles sont corrompues, veuillez attendre la nouvelle mise à jour !",

  // cần dịch
  "character": "Personnages",
  "artifact": "Artéfacts",
  "weapon": "Armes",
  "food": "Nourriture",
  "domain": "Donjons",
  "animal": "Animal",
  "enemy": "Ennemis",
  "achievement": "Succès",
  "windglider": "Planeurs",
  "forging_recipe": "Foring recipe",
  "namecard": "Thème",
  "outfit": "Tenues",
  "element": "Élément",
  "skill": "Compétence",
  "skill_passive": "Passif",
  "constellation": "Constellation",
  "ascension": "Ascension",
  "ascend": "Monter",
  "days_of_week": "Jour de la semaine",

  // date
  "day1": "Lundi",
  "day2": "Mardi",
  "day3": "Mercredi",
  "day4": "Jeudi",
  "day5": "Vendredi",
  "day6": "Samedi",
  "day7": "Dimanche",

  // game
  "FIGHT_PROP_ATTACK_PERCENT": "ATQ (%)",
  "FIGHT_PROP_ROCK_ADD_HURT": "Bonus de DGT Géo (%)",
  "FIGHT_PROP_ICE_ADD_HURT": "Bonus de DGT Cryo (%)",
  "FIGHT_PROP_ELEC_ADD_HURT": "Bonus de DGT Électro (%)",
  "FIGHT_PROP_FIRE_ADD_HURT": "Bonus de DGT Pyro (%)",
  "FIGHT_PROP_WATER_ADD_HURT": "Bonus de DGT Hydro (%)",
  "FIGHT_PROP_WIND_ADD_HURT": "Bonus de DGT Anémo (%)",
  "FIGHT_PROP_GRASS_ADD_HURT": "Bonus de DGT Dendro (%)",
  "FIGHT_PROP_HEAL_ADD": "Bonus de soins (%)",
  "FIGHT_PROP_DEFENSE_PERCENT": "DÉF (%)",
  "FIGHT_PROP_PHYSICAL_ADD_HURT": "Bonus de DGT physiques (%)",
  "FIGHT_PROP_ELEMENT_MASTERY": "Maîtrise élémentaire",
  "FIGHT_PROP_CHARGE_EFFICIENCY": "Recharge d'énergie (%)",
  "FIGHT_PROP_HP_PERCENT": "PV (%)",
  "FIGHT_PROP_CRITICAL": "Taux CRIT (%)",
  "FIGHT_PROP_CRITICAL_HURT": "DGT CRIT (%)",

  // các loại chỉ số
  "attack": "ATQ",
  "hp": "PV",
  "def": "DÉF",
  "energy_recharge": "Recharge d'énergie",
  "elemental_mastery": "Maîtrise élémentaire",
  "crit_rate": "Taux CRIT",
  "crit_dame": "DGT CRIT",
  "dame_physical": "Bonus de DGT physiques",
  "dame_element": "Bonus de DGT",
  "healing_bonus": "Bonus de soins",

  // element
  "anemo": "Anémo",
  "geo": "Géo",
  "electro": "Électro",
  "dendro": "Dendro",
  "pyro": "Pyro",
  "hydro": "Hydro",
  "cryo": "Cryo",
  "none": "None",

  "e_anemo": "Anémo",
  "e_geo": "Géo",
  "e_electro": "Électro",
  "e_dendro": "Dendro",
  "e_pyro": "Pyro",
  "e_hydro": "Hydro",
  "e_cryo": "Cryo",

  // weapon
  "sword": "Épée à une main",
  "bow": "Arc",
  "claymore": "Épée à deux mains",
  "catalyst": "Catalyseur",
  "polearm": "Arme d'hast",

  // region
  "mondstadt": "Mondstadt",
  "sumeru": "Sumeru",
  "inazuma": "Inazuma",
  "liyue": "Liyue",
  "snezhnaya": "Snezhnaya",
};
