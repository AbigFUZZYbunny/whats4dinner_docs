// To parse this JSON data, do
//
//     final recipe = recipeFromJson(jsonString);

import 'dart:convert';
import 'ingredient_item.dart';
import 'nutrient_item.dart';
import 'equipment_item.dart';
import 'package:w4d_test/utils/double_convert.dart';

class Recipe {
  bool vegetarian;
  bool vegan;
  bool glutenFree;
  bool dairyFree;
  bool sustainable;
  int weightWatcherSmartPoints;
  bool lowFodmap;
  bool ketogenic;
  bool whole30;
  int preparationMinutes;
  int cookingMinutes;
  String sourceUrl;
  String creditText;
  double pricePerServing;
  List<IngredientItem> extendedIngredients;
  int id;
  String title;
  int readyInMinutes;
  int servings;
  String image;
  String imageType;
  Nutrition nutrition;
  List<String> cuisines;
  List<String> diets;
  List<AnalyzedInstruction> analyzedInstructions;

  Recipe({
    this.vegetarian,
    this.vegan,
    this.glutenFree,
    this.dairyFree,
    this.sustainable,
    this.weightWatcherSmartPoints,
    this.lowFodmap,
    this.ketogenic,
    this.whole30,
    this.preparationMinutes,
    this.cookingMinutes,
    this.sourceUrl,
    this.creditText,
    this.pricePerServing,
    this.extendedIngredients,
    this.id,
    this.title,
    this.readyInMinutes,
    this.servings,
    this.image,
    this.imageType,
    this.nutrition,
    this.cuisines,
    this.diets,
    this.analyzedInstructions,
  });

  factory Recipe.fromRawJson(String str) => Recipe.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Recipe.fromJson(Map<String, dynamic> json) => new Recipe(
    vegetarian: json["vegetarian"] == null ? null : json["vegetarian"],
    vegan: json["vegan"] == null ? null : json["vegan"],
    glutenFree: json["glutenFree"] == null ? null : json["glutenFree"],
    dairyFree: json["dairyFree"] == null ? null : json["dairyFree"],
    sustainable: json["sustainable"] == null ? null : json["sustainable"],
    weightWatcherSmartPoints: json["weightWatcherSmartPoints"] == null ? null : json["weightWatcherSmartPoints"],
    lowFodmap: json["lowFodmap"] == null ? null : json["lowFodmap"],
    ketogenic: json["ketogenic"] == null ? null : json["ketogenic"],
    whole30: json["whole30"] == null ? null : json["whole30"],
    preparationMinutes: json["preparationMinutes"] == null ? null : json["preparationMinutes"],
    cookingMinutes: json["cookingMinutes"] == null ? null : json["cookingMinutes"],
    sourceUrl: json["sourceUrl"] == null ? null : json["sourceUrl"],
    creditText: json["creditText"] == null ? null : json["creditText"],
    pricePerServing: json["pricePerServing"] == null ? null : Convert.dynamicToDouble(json["pricePerServing"]),
    extendedIngredients: json["extendedIngredients"] == null ? null : new List<IngredientItem>.from(json["extendedIngredients"].map((x) => IngredientItem.fromJson(x))),
    id: json["id"] == null ? null : json["id"],
    title: json["title"] == null ? null : json["title"],
    readyInMinutes: json["readyInMinutes"] == null ? null : json["readyInMinutes"],
    servings: json["servings"] == null ? null : json["servings"],
    image: json["image"] == null ? null : json["image"],
    imageType: json["imageType"] == null ? null : json["imageType"],
    nutrition: json["nutrition"] == null ? null : Nutrition.fromJson(json["nutrition"]),
    cuisines: json["cuisines"] == null ? null : new List<String>.from(json["cuisines"].map((x) => x)),
    diets: json["diets"] == null ? null : new List<String>.from(json["diets"].map((x) => x)),
    analyzedInstructions: json["analyzedInstructions"] == null ? null : new List<AnalyzedInstruction>.from(json["analyzedInstructions"].map((x) => AnalyzedInstruction.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "vegetarian": vegetarian == null ? null : vegetarian,
    "vegan": vegan == null ? null : vegan,
    "glutenFree": glutenFree == null ? null : glutenFree,
    "dairyFree": dairyFree == null ? null : dairyFree,
    "sustainable": sustainable == null ? null : sustainable,
    "weightWatcherSmartPoints": weightWatcherSmartPoints == null ? null : weightWatcherSmartPoints,
    "lowFodmap": lowFodmap == null ? null : lowFodmap,
    "ketogenic": ketogenic == null ? null : ketogenic,
    "whole30": whole30 == null ? null : whole30,
    "preparationMinutes": preparationMinutes == null ? null : preparationMinutes,
    "cookingMinutes": cookingMinutes == null ? null : cookingMinutes,
    "sourceUrl": sourceUrl == null ? null : sourceUrl,
    "creditText": creditText == null ? null : creditText,
    "pricePerServing": pricePerServing == null ? null : pricePerServing,
    "extendedIngredients": extendedIngredients == null ? null : new List<dynamic>.from(extendedIngredients.map((x) => x.toJson())),
    "id": id == null ? null : id,
    "title": title == null ? null : title,
    "readyInMinutes": readyInMinutes == null ? null : readyInMinutes,
    "servings": servings == null ? null : servings,
    "image": image == null ? null : image,
    "imageType": imageType == null ? null : imageType,
    "nutrition": nutrition == null ? null : nutrition.toJson(),
    "cuisines": cuisines == null ? null : new List<dynamic>.from(cuisines.map((x) => x)),
    "diets": diets == null ? null : new List<dynamic>.from(diets.map((x) => x)),
    "analyzedInstructions": analyzedInstructions == null ? null : new List<dynamic>.from(analyzedInstructions.map((x) => x.toJson())),
  };
}

class AnalyzedInstruction {
  List<Step> steps;

  AnalyzedInstruction({
    this.steps,
  });

  factory AnalyzedInstruction.fromRawJson(String str) => AnalyzedInstruction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AnalyzedInstruction.fromJson(Map<String, dynamic> json) => new AnalyzedInstruction(
    steps: json["steps"] == null ? null : new List<Step>.from(json["steps"].map((x) => Step.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "steps": steps == null ? null : new List<dynamic>.from(steps.map((x) => x.toJson())),
  };
}

class Step {
  int number;
  String step;
  List<IngredientItem> ingredients;
  List<EquipmentItem> equipment;
  Length length;

  Step({
    this.number,
    this.step,
    this.ingredients,
    this.equipment,
    this.length,
  });

  factory Step.fromRawJson(String str) => Step.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Step.fromJson(Map<String, dynamic> json) => new Step(
    number: json["number"] == null ? null : json["number"],
    step: json["step"] == null ? null : json["step"],
    ingredients: json["ingredients"] == null ? null : new List<IngredientItem>.from(json["ingredients"].map((x) => IngredientItem.fromJson(x))),
    equipment: json["equipment"] == null ? null : new List<EquipmentItem>.from(json["equipment"].map((x) => EquipmentItem.fromJson(x))),
    length: json["length"] == null ? null : Length.fromJson(json["length"]),
  );

  Map<String, dynamic> toJson() => {
    "number": number == null ? null : number,
    "step": step == null ? null : step,
    "ingredients": ingredients == null ? null : new List<dynamic>.from(ingredients.map((x) => x.toJson())),
    "equipment": equipment == null ? null : new List<dynamic>.from(equipment.map((x) => x.toJson())),
    "length": length == null ? null : length.toJson(),
  };
}

class Length {
  int number;
  String unit;

  Length({
    this.number,
    this.unit,
  });

  factory Length.fromRawJson(String str) => Length.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Length.fromJson(Map<String, dynamic> json) => new Length(
    number: json["number"] == null ? null : json["number"],
    unit: json["unit"] == null ? null : json["unit"],
  );

  Map<String, dynamic> toJson() => {
    "number": number == null ? null : number,
    "unit": unit == null ? null : unit,
  };
}

class Nutrition {
  List<Nutrient> nutrients;
  CaloricBreakdown caloricBreakdown;
  WeightPerServing weightPerServing;

  Nutrition({
    this.nutrients,
    this.caloricBreakdown,
    this.weightPerServing,
  });

  factory Nutrition.fromRawJson(String str) => Nutrition.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Nutrition.fromJson(Map<String, dynamic> json) => new Nutrition(
    nutrients: json["nutrients"] == null ? null : new List<Nutrient>.from(json["nutrients"].map((x) => Nutrient.fromJson(x))),
    caloricBreakdown: json["caloricBreakdown"] == null ? null : CaloricBreakdown.fromJson(json["caloricBreakdown"]),
    weightPerServing: json["weightPerServing"] == null ? null : WeightPerServing.fromJson(json["weightPerServing"]),
  );

  Map<String, dynamic> toJson() => {
    "nutrients": nutrients == null ? null : new List<dynamic>.from(nutrients.map((x) => x.toJson())),
    "caloricBreakdown": caloricBreakdown == null ? null : caloricBreakdown.toJson(),
    "weightPerServing": weightPerServing == null ? null : weightPerServing.toJson(),
  };
}

class CaloricBreakdown {
  double percentProtein;
  double percentFat;
  double percentCarbs;

  CaloricBreakdown({
    this.percentProtein,
    this.percentFat,
    this.percentCarbs,
  });

  factory CaloricBreakdown.fromRawJson(String str) => CaloricBreakdown.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CaloricBreakdown.fromJson(Map<String, dynamic> json) => new CaloricBreakdown(
    percentProtein: json["percentProtein"] == null ? null : Convert.dynamicToDouble(json["percentProtein"]),
    percentFat: json["percentFat"] == null ? null : Convert.dynamicToDouble(json["percentFat"]),
    percentCarbs: json["percentCarbs"] == null ? null : Convert.dynamicToDouble(json["percentCarbs"]),
  );

  Map<String, dynamic> toJson() => {
    "percentProtein": percentProtein == null ? null : percentProtein,
    "percentFat": percentFat == null ? null : percentFat,
    "percentCarbs": percentCarbs == null ? null : percentCarbs,
  };
}

class WeightPerServing {
  double amount;
  String unit;

  WeightPerServing({
    this.amount,
    this.unit,
  });

  factory WeightPerServing.fromRawJson(String str) => WeightPerServing.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WeightPerServing.fromJson(Map<String, dynamic> json) => new WeightPerServing(
    amount: json["amount"] == null ? null : Convert.dynamicToDouble(json["amount"]),
    unit: json["unit"] == null ? null : json["unit"],
  );

  Map<String, dynamic> toJson() => {
    "amount": amount == null ? null : amount,
    "unit": unit == null ? null : unit,
  };
}