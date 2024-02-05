import 'dart:ui';

import 'package:genshinfan/models/app/language.dart';

const russian = Language(
  languageCode: "Russian",
  language: "Русский",
  locale: Locale("ru", 'RU'),
);

const Map<String, String> ru = {
  "welcome_to_app": "Добро пожаловать в Genshin Fans",
  "version": "Версия: @version",
  "Loading...": "Загрузка",
  "@percent% Downloaded.": "Загружено @percent%",
  "Decompressing...": "Распаковка...",
  "Processing": "Обработка",
  "Checking": "Проверка",
  "no_data_version": "Новая версия данных отсутствует.",
  "update_new_data": "Обновить данные",
  "complete": "Завершено",
  "wait_a_minute": "Подождите минутку",
  "data_failure":
      "Невозможно загрузить данные! Пожалуйста, подключите интернет.",
  "not_internet": "Не удалось подключиться к интернету!",
  "setting": "Настройки",
  "dark_theme": "Тёмная тема",
  "change_language": "Сменить язык",
  "select_language": "Выберите язык",
  "teyvat_resource": "Ресурсы Тейвата",
  "select_character": "Пожалуйста, выберите персонажа",
  "rarity": "Редкость",
  "especially": "Адаптивный",
  "information": "Информация",
  "character_information": "Информация о персонаже",
  "substat": "Атрибут",
  "gender": "Пол",
  "birthday": "День рождения",
  "travelerBirthday": "День рождения путешественника",
  "affiliation": "Принадлежность",
  "region": "Регион",
  "description": "Описание",
  "level": "Уровень",
  "resource": "Ресурсы",
  "skill_ascension": "Возвышение таланта",
  "stats": "Характеристики",
  "weapon_information": "Информация о оружии",
  "talent_stats": "Характеристики навыка",
  "select_weapon": "Пожалуйста, выберите оружие",
  "refinement": "Пробуждение",
  "type": "Тип",
  "story": "История",
  "effectname": "Название эффекта",
  "resource_information": "Информация о ресурсах",
  "select_resource": "Пожалуйста, выберите ресурс",
  "dupealias": "Дополнительная информация",
  "source": "Источник",
  "artifact_information": "Информация о артефакте",
  "select_artifact": "Пожалуйста, выберите артефакт",
  "set1": "Активна 1 часть",
  "set2": "Активны 2 части сета",
  "set4": "Активны 4 части сета",
  "domain_information": "Информация о подземелье",
  "select_domain": "Пожалуйста, выберите подземелье",
  "domainentrance": "Группа",
  "recommendedlevel": "Рекомендуемый уровень",
  "unlockrank": "Ранг разблокировки",
  "recommendedelements": "Рекомендуемый элемент",
  "disorder": "Аномалия артерий",
  "reward": "Награда",
  "select_enemy": "Пожалуйста, выберите врага",
  "enemy_information": "Информация о враге",
  "monster": "Монстр",
  "specialname": "Особое название",
  "notification": "Уведомление",
  "notification_change_language":
      "После изменения языка приложение будет\nбудет перезапущено для загрузки данных на выбранном языке.",
  "cancel": "Отменить",
  "ok": "Применить",
  "double_click_exit": "Нажмите еще раз, чтобы выйти",
  "today": "Сегодня",
  "birthday_in_month": "День рождения в этом месяце",
  "option": "Опция",
  "success": "Успешно",
  "not": "Нет",
  "note": "Заметка",
  "daily_reset_time":
      "<b>Ежедневный сброс</b> происходит каждые 04:00 (4AM), основываясь на времени часового пояса сервера.\n\n - Сервер Азия(AS): GMT+8\n - Сервер Европа (EU): GMT+1\n - Сервер Америка (NA): GMT-5",
  "character_up_today":
      "В течении этого дня вы можете собирать материалы для улучшения персонажей",
  "weapon_up_today":
      "В течении этого дня вы можете собирать материалы для улучшения оружий",
  "genshin_map": "Genshin Map",
  "notification_open_genshin_map":
      "Вы хотите открыть <b>Genshin Map</b> в браузере?",
  "update": "Обновление",
  "check_update": "Проверить обновление данных.",
  "description_update_setting": "Проверка и обновление данных для приложения.",
  "contribute": "Внести вклад",
  "character_building": "Построение персонажей",
  "contribute_translation": "Помочь с переводом",
  "send_feedback": "Отправить отзыв",
  "description_send_feedback": "Почта разработчика.",
  "other": "Другое",
  "join_discord": "Присоединиться к Discord серверу.",
  "confirm": "Подтвердить",
  "access_throughput": "Пропускная способность",
  "total": "Всего",
  "this_month": "Этот месяц",
  "set2_artifact": "2 части",
  "set4_artifact": "4 части",
  "sands_effect": "Часы",
  "goblet_effect": "Бонус кубка",
  "circlet_effect": "Бонус короны",
  "user_information": "Информация пользователя",
  "login": "Войти",
  "logout_question": "Вы хотите выйти?",
  "refresh_traffic": "Обновлять трафик?",
  "required_login": "Для выполнения этой функции необходимо войти в систему.",
  "admin": "Админимтратор",
  "admin_description": "Управление приложением",
  "user_management": "Управление пользователями",
  "data_management": "Управление данными",
  "manager": "Управление",
  "contribution_character": "Предложить билд",
  "role_and_data_user": "Права и данные пользователя.",
  "manage_user_character_contribution": "Управление билдов пользователя",
  "select_full_info": "Вы должны заполнить всю информацию.",
  "author": "Автор",
  "invalid": "Недопустимо",
  "delete": "Удалить",
  "delete_contribute": "Удалить билд этого пользователя?",
  "add_contribute_to_database": "Добавить это в базу данных?",
  "delete_contribute_to_database": "Удалить?",
  "contribute_manage_empty": "Пока нету сборок :(",
  "censor": "Цензура",
  "member": "Участник",
  "permission": "Разрешение",
  "permission_denied": "Разрешение отклонено",
  "error": "Ошибка",
  "note_contribute_character_building":
      "Эти даные будут проверены и одобрены модераторами.",
  "timeout_exception": "Исключение по таймауту",
  "reset": "Сброс",
  "filter_character": "Фильтр персонажей",
  "filter_weapon": "Фильр оружия",
  "filter_artifact": "Фильтр артефактов",
  "filter_domain": "Фильтр подземель",
  "filter_resource": "Фильтр ресурсов Тейвата",
  "filter_enemy": "Фильтр врагов",
  "reset_filter_comfirm": "Хотите сбросить фильтр?",
  "sort_name": "Сортировка по имени",
  "filter_with_rarity": "Фильтр по одному виду редкости",
  "empty_character": "Бет персонажей",
  "empty_artifact": "Без артефактов",
  "empty_resource": "Без ресурсов Тейвата",
  "empty_weapon": "Без оружия",
  "all": "Все",
  "online": "Online",

  "category": "Категория",
  "animal_information": "Информация о животных",
  "select_animal": "Пожалуйста, выберите животное",
  "achievement_information": "Информация о достижении",
  "select_achievement": "Пожалуйста, выберите достижение",
  "namecard_information": "Информация о именная карта",
  "select_namecard": "Пожалуста, выберите именную карту",
  "craft": "Крафт",
  "craft_information": "Информация о форме",
  "select_craft": "Пожалуйста, выберите форму",
  "recipe": "рецепт",
  "outfit_information": "Информация о костюме",
  "select_outfit": "Пожалуйста, выберите костюм",
  "geography": "Географическая область",
  "geography_information": "Географическая информация",
  "select_geography": "Пожалуйста, выберите географический регион",
  "windglider_information": "Информация о планере",
  "select_windglider": "Пожалуйста, выберите планер",
  "extract_failure": "Ошибка при извлечении данных",
  "delete_data_and_redownload": "Удалить данные и загрузить повторно",
  "data_failure_wait_for_new_update":
      "Текущие данные повреждены, пожалуйста, дождитесь нового обновления!",
  "user": "Пользоветель",
  "search": "Поиск",
  "role": "Роль",
  "food_information": "Информация о еде",
  "empty_food": "Без еды",
  "ingredient": "Ингридиент",
  "menu": "Меню",
  "tool": "Инструменты",
  "team_building": "Построение отряда",

  // cần dịch
  "character": "Персонаж",
  "artifact": "Артефакт",
  "weapon": "Оружие",
  "food": "Еда",
  "domain": "Подземелье",
  "animal": "Животные",
  "enemy": "Враги",
  "achievement": "Достижение",
  "windglider": "Планер",
  "forging_recipe": "Форма для ковки",
  "namecard": "Именная карта",
  "outfit": "Костюм",
  "element": "Элемент",
  "skill": "Навык",
  "skill_passive": "Пасивный",
  "constellation": "Совездия",
  "ascension": "Вознесение",
  "ascend": "Вызвышение",
  "days_of_week": "Дни недели",

  // date
  "day1": "Понедельник",
  "day2": "Вторник",
  "day3": "Среда",
  "day4": "Четверг",
  "day5": "Пятница",
  "day6": "Суббота",
  "day7": "Воскресенье",

  // game
  "FIGHT_PROP_ATTACK_PERCENT": "(%) Атака",
  "FIGHT_PROP_ROCK_ADD_HURT": "Бонус (%) Гео урона",
  "FIGHT_PROP_ICE_ADD_HURT": "Бонус (%) Крио урона",
  "FIGHT_PROP_ELEC_ADD_HURT": "Бонус (%) Электро урона",
  "FIGHT_PROP_FIRE_ADD_HURT": "Бонус (%) Пиро урона",
  "FIGHT_PROP_WATER_ADD_HURT": "Бонус (%) Гидро урона",
  "FIGHT_PROP_WIND_ADD_HURT": "Бонус (%) Анемо урона",
  "FIGHT_PROP_GRASS_ADD_HURT": "Бонус (%) Дендро урона",
  "FIGHT_PROP_HEAL_ADD": "Бонус (%) лечения ",
  "FIGHT_PROP_DEFENSE_PERCENT": "Защита (%)",
  "FIGHT_PROP_PHYSICAL_ADD_HURT": "Бонус (%) физ. урона",
  "FIGHT_PROP_ELEMENT_MASTERY": "Мастерство стихий",
  "FIGHT_PROP_CHARGE_EFFICIENCY": "(%) Восст. энергии",
  "FIGHT_PROP_HP_PERCENT": "HP (%)",
  "FIGHT_PROP_CRITICAL": "(%) Шанс крит. попадения",
  "FIGHT_PROP_CRITICAL_HURT": "(%) Критический урон",

  // các loại chỉ số
  "attack": "Сила атаки",
  "hp": "HP",
  "def": "Защита",
  "energy_recharge": "Восст. энергии",
  "elemental_mastery": "Мастерство стихий",
  "crit_rate": "Шанс крит. попадания",
  "crit_dame": "Крит. урон",
  "dame_physical": "физ. урона",
  "dame_element": "Элемент урона",
  "healing_bonus": "Бонус лечения",

  // element
  "anemo": "Анемо",
  "geo": "Гео",
  "electro": "Электро",
  "dendro": "Дендро",
  "pyro": "Пиро",
  "hydro": "Гидро",
  "cryo": "Крио",
  "none": "Нет",

  "e_anemo": "Анемо",
  "e_geo": "Гео",
  "e_electro": "Электро",
  "e_dendro": "Дендро",
  "e_pyro": "Пиро",
  "e_hydro": "Гидро",
  "e_cryo": "Крио",

  // weapon
  "sword": "Одноручное",
  "bow": "Стрелковое",
  "claymore": "Двуручное",
  "catalyst": "Катализатор",
  "polearm": "Древковое",

  // region
  "mondstadt": "Мондштадт",
  "sumeru": "Сумеру",
  "inazuma": "Инадзума",
  "liyue": "Ли Юэ",
  "snezhnaya": "Снежная",
};
