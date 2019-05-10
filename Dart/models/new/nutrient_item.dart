// To parse this JSON data, do
//
//     final nutrient = nutrientFromJson(jsonString);

import 'dart:convert';
import 'package:w4d_test/utils/double_convert.dart';

class Nutrient {
  String title;
  String unit;
  double amount;
  double percentOfDailyNeeds;
  Map<String, NutrientPreference> preferences;

  Nutrient({
    this.title,
    this.unit,
    this.preferences,
    this.amount,
    this.percentOfDailyNeeds,
  });

  factory Nutrient.fromRawJson(String str) => Nutrient.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Nutrient.newNutrient(String t, String u) => new Nutrient(
    title: t,
    unit: u,
    amount: null,
    percentOfDailyNeeds: null,
    preferences: NewNutrientPreferences().ret,
  );

  factory Nutrient.fromJson(Map<String, dynamic> json) => new Nutrient(
    title: json["title"] == null ? null : json["title"],
    unit: json["unit"] == null ? null : json["unit"],
    amount: json["amount"] == null ? null : Convert.dynamicToDouble(json["amount"]),
    percentOfDailyNeeds: json["percentOfDailyNeeds"] == null ? null : Convert.dynamicToDouble(json["percentOfDailyNeeds"]),
    preferences: json["preferences"] == null ? null : new Map.from(json["preferences"]).map((k, v) => new MapEntry<String, NutrientPreference>(k, NutrientPreference.fromJson(v))),
  );

  Map<String, dynamic> toJson() => {
    "title": title == null ? null : title,
    "unit": unit == null ? null : unit,
    "amount": amount == null ? null : amount,
    "percentOfDailyNeeds": percentOfDailyNeeds == null ? null : percentOfDailyNeeds,
    "preferences": preferences == null ? null : new Map.from(preferences).map((k, v) => new MapEntry<String, dynamic>(k, v.toJson())),
  };
}

class NewNutrientPreferences{
  Map<String, NutrientPreference> ret = new Map<String, NutrientPreference>();

  NewNutrientPreferences() {
    List<String> _cat = new List<String>();
    _cat.add("mealMin");
    _cat.add("mealMax");
    _cat.add("breakfastMin");
    _cat.add("breakfastMax");
    _cat.add("lunchMin");
    _cat.add("lunchMax");
    _cat.add("dinnerMin");
    _cat.add("dinnerMax");
    _cat.add("dailyMin");
    _cat.add("dailyMax");

    for (String c in _cat) {
      ret.putIfAbsent(c, () => new NutrientPreference.newPref());
    }
  }
}

class NutrientPreference {
  double amount;
  int filterLevel;
  bool isPercentage;

  NutrientPreference({
    this.amount,
    this.filterLevel,
    this.isPercentage,
  });

  factory NutrientPreference.fromRawJson(String str) => NutrientPreference.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NutrientPreference.newPref() => new NutrientPreference(
    filterLevel: 0,
    isPercentage: false,
    amount: 0,
  );

  factory NutrientPreference.fromJson(Map<String, dynamic> json) => new NutrientPreference(
    amount: json["amount"] == null ? null : Convert.dynamicToDouble(json["amount"]),
    filterLevel: json["filterLevel"] == null ? null : json["filterLevel"],
    isPercentage: json["isPercentage"] == null ? null : json["isPercentage"],
  );

  Map<String, dynamic> toJson() => {
    "amount": amount == null ? null : amount,
    "filterLevel": filterLevel == null ? null : filterLevel,
    "isPercentage": isPercentage == null ? null : isPercentage,
  };
}
