import 'dart:convert';
import 'package:w4d_test/models/recipe.dart';
import 'package:w4d_test/models/restaurant.dart';
import 'package:w4d_test/services/spoonacular.dart';
import 'dart:async';

class Meal {
  DateTime date;
  String mealType;
  bool completed;
  Recipe recipe;
  Restaurant restaurant;

  Meal({
    this.date,
    this.mealType,
    this.completed,
    this.recipe,
    this.restaurant,
  });

  factory Meal.fromRawJson(String str) => Meal.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Meal.fromJson(Map<String, dynamic> json) => new Meal(
    date: json["date"] == null ? null : DateTime.parse(json["date"]),
    mealType: json["mealType"] == null ? null : json["mealType"],
    completed: json["completed"] == null ? null : json["completed"],
    recipe: json["recipe"] == null ? null : Recipe.fromJson(json["recipe"]),
    restaurant: json["restaraunt"] == null ? null : Restaurant.fromJson(json["restaraunt"]),
  );

  factory Meal.newRecipeMeal() => new Meal(
    date: DateTime.now(),
    mealType: "dinner",
    completed: false,
    recipe: null,
    restaurant: null,
  );

  Map<String, dynamic> toJson() => {
    "date": date == null ? null : date.toIso8601String(),
    "mealType": mealType == null ? null : mealType,
    "completed": completed == null ? null : completed,
    "recipe": recipe == null ? null : recipe.toJson(),
    "restaraunt": restaurant == null ? null : restaurant.toJson(),
  };
}