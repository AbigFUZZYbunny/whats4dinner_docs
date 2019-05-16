// To parse this JSON data, do
//
//     final limits = limitsFromJson(jsonString);

import 'dart:convert';

class Limits {
  int recipes;
  int restaurants;
  Map<String, int> spoonacular;

  Limits({
    this.recipes,
    this.restaurants,
    this.spoonacular,
  });

  factory Limits.fromRawJson(String str) => Limits.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Limits.fromJson(Map<String, dynamic> json) => new Limits(
    recipes: json["recipes"] == null ? null : json["recipes"],
    restaurants: json["restaurants"] == null ? null : json["restaurants"],
    spoonacular: json["spoonacular"] == null ? null : new Map.from(json["spoonacular"]).map((k, v) => new MapEntry<String, int>(k, v)),
  );

  factory Limits.newLimits() => new Limits(
    recipes:  30,
    restaurants: 30,
    spoonacular: new Map(),
  );

  Map<String, dynamic> toJson() => {
    "recipes": recipes == null ? null : recipes,
    "restaurants": restaurants == null ? null : restaurants,
    "spoonacular": spoonacular == null ? null : new Map.from(spoonacular).map((k, v) => new MapEntry<String, dynamic>(k, v)),
  };
}
