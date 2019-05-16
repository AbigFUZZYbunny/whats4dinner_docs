// To parse this JSON data, do
//
//     final nutrient = nutrientFromJson(jsonString);

import 'dart:convert';
import 'package:w4d_test/utils/double_convert.dart';

class Nutrient {
  String title;
  String qName;
  int min;
  int max;
  String unit;
  double amount;
  double percentOfDailyNeeds;

  Nutrient({
    this.title,
    this.unit,
    this.qName,
    this.min,
    this.max,
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
    qName: t.replaceAll(new RegExp(r"\s+\b|\b\s"), ""),
    min: 0,
    max: 0,
  );

  factory Nutrient.fromJson(Map<String, dynamic> json) => new Nutrient(
    title: json["title"] == null ? null : json["title"],
    unit: json["unit"] == null ? null : json["unit"],
    amount: json["amount"] == null ? null : Converter.dynamicToDouble(json["amount"]),
    percentOfDailyNeeds: json["percentOfDailyNeeds"] == null ? null : Converter.dynamicToDouble(json["percentOfDailyNeeds"]),
    min: json["min"] == null ? null : json["min"],
    max: json["max"] == null ? null : json["max"],
    qName: json["title"] == null ? null : json["title"].replaceAll(new RegExp(r"\s+\b|\b\s"), ""),
  );

  Map<String, dynamic> toJson() => {
    "title": title == null ? null : title,
    "unit": unit == null ? null : unit,
    "amount": amount == null ? null : amount,
    "percentOfDailyNeeds": percentOfDailyNeeds == null ? null : percentOfDailyNeeds,
    "min": min == null ? null : min,
    "max": max == null ? null : max,
  };
}