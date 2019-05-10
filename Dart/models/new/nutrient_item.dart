// To parse this JSON data, do
//
//     final nutrient = nutrientFromJson(jsonString);

import 'dart:convert';
import 'package:w4d_test/utils/double_convert.dart';

class Nutrient {
  String title;
  String unit;
  double amount;
  Map<String, NutrientPreference> preferences;

  Nutrient({
    this.title,
    this.unit,
    this.preferences,
    this.amount,
  });

  factory Nutrient.fromRawJson(String str) => Nutrient.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Nutrient.fromJson(Map<String, dynamic> json) => new Nutrient(
    title: json["title"] == null ? null : json["title"],
    unit: json["unit"] == null ? null : json["unit"],
    amount: json["amount"] == null ? null : Convert.dynamicToDouble(json["amount"]),
    preferences: json["preferences"] == null ? null : new Map.from(json["preferences"]).map((k, v) => new MapEntry<String, NutrientPreference>(k, NutrientPreference.fromJson(v))),
  );

  Map<String, dynamic> toJson() => {
    "title": title == null ? null : title,
    "unit": unit == null ? null : unit,
    "amount": amount == null ? null : amount,
    "preferences": preferences == null ? null : new Map.from(preferences).map((k, v) => new MapEntry<String, dynamic>(k, v.toJson())),
  };
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
