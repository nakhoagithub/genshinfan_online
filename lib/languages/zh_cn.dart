import 'dart:ui';

import 'package:genshinfan/models/app/language.dart';

// giản thể

const chineseSimplified = Language(
  languageCode: "ChineseSimplified",
  language: "简体中文",
  locale: Locale("zh", "CN"),
);

const Map<String, String> zhCN = {
  "welcome_to_app": "Welcome to Genshin Fan",
  "version": "版本 @version",

  "loading": "加载中...",
  "downloading": "@percent% 下载.",
  "decompressing": "解压缩...",
  "processing": "加工",
  "checking": "检查",
  "no_data_version": "没有新的数据版本.",
  "update_new_data": "更新新数据.",
  "complete": "完全的!",
  "wait_a_minute": "等一下",
  "data_failure": "无法加载数据! 请打开网络.",
  "not_internet": "互联网连接失败!",
  "setting": "设置",
  "dark_theme": "深色主题",
  "change_language": "改变语言",
  "select_language": "选择语言",
  "teyvat_resource": "提瓦特的资源",
  "select_character": "请选择角色",
  "rarity": "稀有度",
  "especially": "尤其",
  "information": "信息",
  "character_information": "角色信息",
  "substat": "子统计",
  "gender": "性别",
  "birthday": "生日",
  "travelerBirthday": "旅行者的生日",
  "affiliation": "联系",
  "region": "地区",
  "description": "描述",
  "level": "等级",
  "resource": "资源",
  "skill_ascension": "技能提升",
  "stats": "统计数据",
  "weapon_information": "武器信息",
  "talent_stats": "技能统计",
  "select_weapon": "请选择武器",
  "refinement": "求精",
  "type": "类型",
  "story": "故事",
  "effectname": "效果名称",
  "resource_information": "资源信息",
  "select_resource": "请选择资源",
  "dupealias": "更多信息",
  "source": "来源",

  "artifact_information": "神器信息",
  "select_artifact": "请选择神器",
  "set1": "激活 1 项",
  "set2": "激活 2 件套",
  "set4": "激活 4 件套",

  "domain_information": "域信息",
  "select_domain": "请选择地牢",
  "domainentrance": "入口",
  "recommendedlevel": "推荐等级",
  "unlockrank": "解锁等级",
  "recommendedelements": "推荐元素",
  "disorder": "紊乱",
  "reward": "报酬",
  "select_enemy": "请选择敌人",
  "enemy_information": "敌人信息",
  "monster": "怪物",
  "specialname": "特殊名称",
  "notification": "通知",
  "notification_change_language": "更改语言后，应用程序将重新启动以您选择的语言加载数据.",
  "cancel": "取消",
  "ok": "同意",
  "double_click_exit": "再按一次退出",
  "today": "今天",
  "birthday_in_month": "当月生日",
  "option": "选项",
  "success": "成功地",
  "not": "不是",
  "note": "笔记",
  "daily_reset_time":
      "<b>每日重置</b>根据服务器时区时间每 04:00 (4AM) 进行一次。\n\n - 服务器亚洲 (AS): GMT+8\n - 服务器欧洲 (EU): GMT+1\n - 美国服务器(NA): GMT-5",
  "character_up_today": "角色可以在白天找到升级材料.",
  "weapon_up_today": "武器可以在白天找到升级材料.",
  "genshin_map": "Genshin Map",
  "notification_open_genshin_map": "您要在浏览器中打开 <b>Genshin Map</b> 吗?",
  "update": "更新",
  "check_update": "检查数据更新.",
  "description_update_setting": "检查并更新应用程序的数据.",
  "contribute": "贡献",
  "character_building": "人物塑造",
  "contribute_translation": "贡献翻译",
  "send_feedback": "发送反馈",
  "description_send_feedback": "给开发者发邮件.",
  "other": "其他",
  "join_discord": "加入 Discord 服务器.",
  "confirm": "确认",
  "access_throughput": "访问吞吐量",
  "total": "全部的",
  "this_month": "这个月",
  "set2_artifact": "2件套神器",
  "set4_artifact": "4件套神器",
  "sands_effect": "金沙效应",
  "goblet_effect": "高脚杯效应",
  "circlet_effect": "圆环效应",
  "user_information": "用户信息",
  "login": "登录",
  "logout_question": "你想退出吗?",
  "refresh_traffic": "刷新流量?",
  "required_login": "您需要登录才能执行此功能.",
  "admin": "行政",
  "admin_description": "应用管理",
  "user_management": "用户管理",
  "data_management": "数据管理",
  "manager": "经理",
  "contribution_character": "贡献人物",
  "role_and_data_user": "用户权利和数据.",
  "manage_user_character_contribution": "管理用户的角色贡献.",
  "select_full_info": "您必须选择完整的信息.",
  "author": "作者",
  "invalid": "无效的",
  "delete": "删除",
  "delete_contribute": "删除此用户贡献?",
  "add_contribute_to_database": "将此贡献添加到数据库?",
  "delete_contribute_to_database": "删除此贡献?",
  "contribute_manage_empty": "还没有贡献",
  "censor": "审查",
  "member": "成员",
  "permission": "允许",
  "permission_denied": "没有权限",
  "error": "错误",
  "note_contribute_character_building": "这些贡献的数据将由版主审查和批准.",
  "timeout_exception": "超时异常",
  "reset": "重置",
  "filter_character": "过滤字符",
  "filter_weapon": "过滤武器",
  "filter_artifact": "过滤神器",
  "filter_domain": "过滤地牢",
  "filter_resource": "过滤提瓦特的资源",
  "filter_enemy": "过滤敌人",
  "reset_filter_comfirm": "是否要重置过滤器?",
  "sort_name": "按名称分类",
  "filter_with_rarity": "按单一稀有度过滤",
  "empty_character": "没有字符",
  "empty_artifact": "无神器",
  "empty_resource": "没有提瓦特的资源",
  "empty_weapon": "没有武器",
  "all": "全部",
  "online": "在线的",

  "category": "类别",
  "animal_information": "动物信息",
  "select_animal": "请选择动物",
  "achievement_information": "成就信息",
  "select_achievement": "请选择成就",
  "namecard_information": "名片信息",
  "select_namecard": "请选择名片",
  "craft": "工艺",
  "craft_information": "工艺信息",
  "select_craft": "请选择工艺",
  "recipe": "食谱",
  "outfit_information": "服装信息",
  "select_outfit": "请选择服装",
  "geography": "地理区域",
  "geography_information": "地理信息",
  "select_geography": "请选择地理区域",
  "windglider_information": "机翼信息",
  "select_windglider": "请选择机翼",
  "extract_failure": "提取数据时出错",
  "delete_data_and_redownload": "删除数据并重新加载",
  "data_failure_wait_for_new_update": "当前数据已损坏，请等待新的更新！",

  // cần dịch
  "character": "角色",
  "artifact": "圣遗物",
  "weapon": "武器",
  "food": "食物",
  "domain": "秘境",
  "animal": "动物",
  "enemy": "敌人",
  "achievement": "成就",
  "windglider": "风之翼",
  "forging_recipe": "锻造配方",
  "namecard": "名片",
  "outfit": "衣装",
  "element": "元素",
  "skill": "技能",
  "skill_passive": "被动的",
  "constellation": "星座",
  "ascension": "阿森松岛",
  "ascend": "登高",
  "days_of_week": "星期几",

  // date
  "day1": "周一",
  "day2": "周二",
  "day3": "周三",
  "day4": "周四",
  "day5": "周五",
  "day6": "周六",
  "day7": "周日",

  // game
  "FIGHT_PROP_ATTACK_PERCENT": "攻击力 (%)",
  "FIGHT_PROP_ROCK_ADD_HURT": "岩元素傷害加成 (%)",
  "FIGHT_PROP_ICE_ADD_HURT": "冰元素伤害加成 (%)",
  "FIGHT_PROP_ELEC_ADD_HURT": "雷元素伤害加成 (%)",
  "FIGHT_PROP_FIRE_ADD_HURT": "火元素伤害加成 (%)",
  "FIGHT_PROP_WATER_ADD_HURT": "水元素伤害加成 (%)",
  "FIGHT_PROP_WIND_ADD_HURT": "风元素伤害加成 (%)",
  "FIGHT_PROP_GRASS_ADD_HURT": "草元素伤害加成 (%)",
  "FIGHT_PROP_HEAL_ADD": "治疗加成 (%)",
  "FIGHT_PROP_DEFENSE_PERCENT": "防御力 (%)",
  "FIGHT_PROP_PHYSICAL_ADD_HURT": "物理伤害加成 (%)",
  "FIGHT_PROP_ELEMENT_MASTERY": "元素精通",
  "FIGHT_PROP_CHARGE_EFFICIENCY": "元素充能效率 (%)",
  "FIGHT_PROP_HP_PERCENT": "生命值 (%)",
  "FIGHT_PROP_CRITICAL": "暴击率 (%)",
  "FIGHT_PROP_CRITICAL_HURT": "暴击伤害 (%)",

  // các loại chỉ số
  "attack": "攻击力",
  "hp": "生命值",
  "def": "防御力",
  "energy_recharge": "元素充能效率",
  "elemental_mastery": "元素精通",
  "crit_rate": "暴击率",
  "crit_dame": "暴击伤害",
  "dame_physical": "物理伤害加成",
  "dame_element": "元素伤害加成",
  "healing_bonus": "治疗加成",

  // element
  "anemo": "风元素",
  "geo": "岩元素",
  "electro": "雷元素",
  "dendro": "草元素",
  "pyro": "火元素",
  "hydro": "水元素",
  "cryo": "冰元素",
  "none": "None",

  "e_anemo": "风元素",
  "e_geo": "岩元素",
  "e_electro": "雷元素",
  "e_dendro": "草元素",
  "e_pyro": "火元素",
  "e_hydro": "水元素",
  "e_cryo": "冰元素",

  // weapon
  "sword": "单手剑",
  "bow": "弓",
  "claymore": "双手剑",
  "catalyst": "法器",
  "polearm": "长柄武器",

  // region
  "mondstadt": "蒙德",
  "sumeru": "须弥",
  "inazuma": "稻妻",
  "liyue": "璃月",
  "snezhnaya": "至冬",
};