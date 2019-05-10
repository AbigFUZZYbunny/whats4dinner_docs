// To parse this JSON data, do
//
//     final preferences = preferencesFromJson(jsonString);

import 'dart:convert';
import 'nutrient_item.dart';
import 'ingredient_item.dart';
import 'package:flutter/material.dart';

class Preferences {
  Notifications notifications;
  Schedule schedule;
  Favorites favorites;
  Cuisines cuisines;
  Map<String, bool> allergies;
  Diets diets;
  Nutrition nutrition;
  Ingredients ingredients;

  Preferences({
    this.notifications,
    this.schedule,
    this.favorites,
    this.cuisines,
    this.allergies,
    this.diets,
    this.nutrition,
    this.ingredients,
  });

  factory Preferences.fromRawJson(String str) => Preferences.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Preferences.newPreferences() => new Preferences(
    notifications: Notifications.newNotificationsPref(),
    schedule: Schedule.newSchedulePreferences(),
    favorites: Favorites.newFavoritesPref(),
    cuisines: Cuisines.newCuisinesPref(),
    allergies: Allergies().ret,
    diets: Diets.newDietsPref(),
    nutrition: Nutrition.newNutritionPref(),
    ingredients: Ingredients.newIngredientsPref(),
  );

  factory Preferences.fromJson(Map<String, dynamic> json) => new Preferences(
    notifications: json["notifications"] == null ? null : Notifications.fromJson(json["notifications"]),
    schedule: json["schedule"] == null ? null : Schedule.fromJson(json["schedule"]),
    favorites: json["favorites"] == null ? null : Favorites.fromJson(json["favorites"]),
    cuisines: json["cuisines"] == null ? null : Cuisines.fromJson(json["cuisines"]),
    allergies: json["allergies"] == null ? null : new Map.from(json["allergies"]).map((k, v) => new MapEntry<String, bool>(k, v)),
    diets: json["diets"] == null ? null : Diets.fromJson(json["diets"]),
    nutrition: json["nutrition"] == null ? null : Nutrition.fromJson(json["nutrition"]),
    ingredients: json["ingredients"] == null ? null : Ingredients.fromJson(json["ingredients"]),
  );

  Map<String, dynamic> toJson() => {
    "notifications": notifications == null ? null : notifications.toJson(),
    "schedule": schedule == null ? null : schedule.toJson(),
    "favorites": favorites == null ? null : favorites.toJson(),
    "cuisines": cuisines == null ? null : cuisines.toJson(),
    "allergies": allergies == null ? null : new Map.from(allergies).map((k, v) => new MapEntry<String, dynamic>(k, v)),
    "diets": diets == null ? null : diets.toJson(),
    "nutrition": nutrition == null ? null : nutrition.toJson(),
    "ingredients": ingredients == null ? null : ingredients.toJson(),
  };
}

class Allergies{
  Map<String, bool> ret = new Map<String,bool>();

  Allergies() {
    List<String> _all= new List<String>();
    _all.add("dairy");
    _all.add("egg");
    _all.add("gluten");
    _all.add("grain");
    _all.add("peanut");
    _all.add("seafood");
    _all.add("sesame");
    _all.add("shellfish");
    _all.add("soy");
    _all.add("sulfite");
    _all.add("treeNut");
    _all.add("wheat");

    for (String a in _all) {
      ret.putIfAbsent(a, () => false);
    }
  }
}

class Cuisines {
  int cuisineWeight;
  List<String> cuisineTypes;

  Cuisines({
    this.cuisineWeight,
    this.cuisineTypes,
  });

  factory Cuisines.fromRawJson(String str) => Cuisines.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Cuisines.newCuisinesPref() => new Cuisines(
    cuisineWeight: 0,
    cuisineTypes: new List<String>(),
  );

  factory Cuisines.fromJson(Map<String, dynamic> json) => new Cuisines(
    cuisineWeight: json["cuisineWeight"] == null ? null : json["cuisineWeight"],
    cuisineTypes: json["cuisineTypes"] == null ? null : new List<String>.from(json["cuisineTypes"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "cuisineWeight": cuisineWeight == null ? null : cuisineWeight,
    "cuisineTypes": cuisineTypes == null ? null : new List<dynamic>.from(cuisineTypes.map((x) => x)),
  };
}

class Diets {
  int filterLevel;
  bool glutenFree;
  bool keto;
  bool paleo;
  bool pescatarian;
  bool primal;
  bool vegan;
  bool vegetarian;
  bool whole30;

  Diets({
    this.filterLevel,
    this.glutenFree,
    this.keto,
    this.paleo,
    this.pescatarian,
    this.primal,
    this.vegan,
    this.vegetarian,
    this.whole30,
  });

  factory Diets.fromRawJson(String str) => Diets.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Diets.newDietsPref() => new Diets(
    filterLevel: 0,
    glutenFree: false,
    keto: false,
    paleo: false,
    pescatarian: false,
    primal: false,
    vegan: false,
    vegetarian: false,
    whole30: false,
  );

  factory Diets.fromJson(Map<String, dynamic> json) => new Diets(
    filterLevel: json["filterLevel"] == null ? null : json["filterLevel"],
    glutenFree: json["glutenFree"] == null ? null : json["glutenFree"],
    keto: json["keto"] == null ? null : json["keto"],
    paleo: json["paleo"] == null ? null : json["paleo"],
    pescatarian: json["pescatarian"] == null ? null : json["pescatarian"],
    primal: json["primal"] == null ? null : json["primal"],
    vegan: json["vegan"] == null ? null : json["vegan"],
    vegetarian: json["vegetarian"] == null ? null : json["vegetarian"],
    whole30: json["whole30"] == null ? null : json["whole30"],
  );

  Map<String, dynamic> toJson() => {
    "filterLevel": filterLevel == null ? null : filterLevel,
    "glutenFree": glutenFree == null ? null : glutenFree,
    "keto": keto == null ? null : keto,
    "paleo": paleo == null ? null : paleo,
    "pescatarian": pescatarian == null ? null : pescatarian,
    "primal": primal == null ? null : primal,
    "vegan": vegan == null ? null : vegan,
    "vegetarian": vegetarian == null ? null : vegetarian,
    "whole30": whole30 == null ? null : whole30,
  };
}

class Favorites {
  int scheduleWeight;
  int quickWeight;

  Favorites({
    this.scheduleWeight,
    this.quickWeight,
  });

  factory Favorites.fromRawJson(String str) => Favorites.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Favorites.newFavoritesPref() => new Favorites(
    scheduleWeight: 0,
    quickWeight: 0,
  );

  factory Favorites.fromJson(Map<String, dynamic> json) => new Favorites(
    scheduleWeight: json["scheduleWeight"] == null ? null : json["scheduleWeight"],
    quickWeight: json["quickWeight"] == null ? null : json["quickWeight"],
  );

  Map<String, dynamic> toJson() => {
    "scheduleWeight": scheduleWeight == null ? null : scheduleWeight,
    "quickWeight": quickWeight == null ? null : quickWeight,
  };
}

class Ingredients {
  int favoritesFilterLevel;
  List<IngredientItem> favorites;
  List<IngredientItem> ignored;

  Ingredients({
    this.favoritesFilterLevel,
    this.favorites,
    this.ignored,
  });

  factory Ingredients.fromRawJson(String str) => Ingredients.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Ingredients.newIngredientsPref() => new Ingredients(
    favoritesFilterLevel: 0,
    favorites: new List<IngredientItem>(),
    ignored: new List<IngredientItem>(),
  );

  factory Ingredients.fromJson(Map<String, dynamic> json) => new Ingredients(
    favoritesFilterLevel: json["favoritesFilterLevel"] == null ? null : json["favoritesFilterLevel"],
    favorites: json["favorites"] == null ? null : new List<IngredientItem>.from(json["favorites"].map((x) => x)),
    ignored: json["ignored"] == null ? null : new List<IngredientItem>.from(json["ignored"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "favoritesFilterLevel": favoritesFilterLevel == null ? null : favoritesFilterLevel,
    "favorites": favorites == null ? null : new List<dynamic>.from(favorites.map((x) => x)),
    "ignored": ignored == null ? null : new List<dynamic>.from(ignored.map((x) => x)),
  };
}

class Notifications {
  bool dinnerStart;
  bool lunchStart;
  bool breakfastStart;
  bool dinnerBell;
  List<String> dinnerBellSms;
  String dinnerBellTxt;
  bool newRecommendations;
  bool expiration;

  Notifications({
    this.dinnerStart,
    this.lunchStart,
    this.breakfastStart,
    this.dinnerBell,
    this.dinnerBellSms,
    this.dinnerBellTxt,
    this.newRecommendations,
    this.expiration,
  });

  factory Notifications.fromRawJson(String str) => Notifications.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Notifications.newNotificationsPref() => new Notifications(
    dinnerBell: false,
    dinnerBellSms: new List<String>(),
    dinnerBellTxt: "Dinner's Ready!",
    dinnerStart: false,
    lunchStart: false,
    breakfastStart: false,
    newRecommendations: false,
    expiration: false,
  );

  factory Notifications.fromJson(Map<String, dynamic> json) => new Notifications(
    dinnerStart: json["dinnerStart"] == null ? null : json["dinnerStart"],
    lunchStart: json["lunchStart"] == null ? null : json["lunchStart"],
    breakfastStart: json["breakfastStart"] == null ? null : json["breakfastStart"],
    dinnerBell: json["dinnerBell"] == null ? null : json["dinnerBell"],
    dinnerBellSms: json["dinnerBellSMS"] == null ? null : new List<String>.from(json["dinnerBellSMS"].map((x) => x)),
    dinnerBellTxt: json["dinnerBellTxt"] == null ? null : json["dinnerBellTxt"],
    newRecommendations: json["newRecommendations"] == null ? null : json["newRecommendations"],
    expiration: json["expiration"] == null ? null : json["expiration"],
  );

  Map<String, dynamic> toJson() => {
    "dinnerStart": dinnerStart == null ? null : dinnerStart,
    "lunchStart": lunchStart == null ? null : lunchStart,
    "breakfastStart": breakfastStart == null ? null : breakfastStart,
    "dinnerBell": dinnerBell == null ? null : dinnerBell,
    "dinnerBellSMS": dinnerBellSms == null ? null : new List<dynamic>.from(dinnerBellSms.map((x) => x)),
    "dinnerBellTxt": dinnerBellTxt == null ? null : dinnerBellTxt,
    "newRecommendations": newRecommendations == null ? null : newRecommendations,
    "expiration": expiration == null ? null : expiration,
  };
}

class Nutrition {
  String preset;
  List<Nutrient> nutrients;

  Nutrition({
    this.preset,
    this.nutrients,
  });

  factory Nutrition.fromRawJson(String str) => Nutrition.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Nutrition.newNutritionPref() => new Nutrition(
    preset: null,
    nutrients: NewNutrition()._nut,
  );

  factory Nutrition.fromJson(Map<String, dynamic> json) => new Nutrition(
    preset: json["preset"] == null ? null : json["preset"],
    nutrients: json["nutrients"] == null ? null : new List<Nutrient>.from(json["nutrients"].map((x) => Nutrient.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "preset": preset == null ? null : preset,
    "nutrients": nutrients == null ? null : new List<dynamic>.from(nutrients.map((x) => x.toJson())),
  };
}

class NewNutrition{
  List<Nutrient> _nut = new List<Nutrient>();

  NewNutrition() {
    _nut.add(new Nutrient.newNutrient("Calories", "cal"));
    _nut.add(new Nutrient.newNutrient("Fat", "g"));
    _nut.add(new Nutrient.newNutrient("Protein", "g"));
    _nut.add(new Nutrient.newNutrient("Carbs", "g"));
    _nut.add(new Nutrient.newNutrient("Alcohol", "g"));
    _nut.add(new Nutrient.newNutrient("Caffeine", "g"));
    _nut.add(new Nutrient.newNutrient("Copper", "mg"));
    _nut.add(new Nutrient.newNutrient("Choline", "mg"));
    _nut.add(new Nutrient.newNutrient("Cholestorol", "mg"));
    _nut.add(new Nutrient.newNutrient("Fluoride", "g"));
    _nut.add(new Nutrient.newNutrient("Saturated Fat", "g"));
    _nut.add(new Nutrient.newNutrient("Vitamin A", "IU"));
    _nut.add(new Nutrient.newNutrient("Vitamin C", "mg"));
    _nut.add(new Nutrient.newNutrient("Vitamin D", "mg"));
    _nut.add(new Nutrient.newNutrient("Vitamin E", "mg"));
    _nut.add(new Nutrient.newNutrient("Vitamin K", "µg"));
    _nut.add(new Nutrient.newNutrient("Vitamin B1", "mg"));
    _nut.add(new Nutrient.newNutrient("Vitamin B2", "mg"));
    _nut.add(new Nutrient.newNutrient("Vitamin B3", "mg"));
    _nut.add(new Nutrient.newNutrient("Vitamin B5", "mg"));
    _nut.add(new Nutrient.newNutrient("Vitamin B6", "mg"));
    _nut.add(new Nutrient.newNutrient("Vitamin B12", "mg"));
    _nut.add(new Nutrient.newNutrient("Fiber", "g"));
    _nut.add(new Nutrient.newNutrient("Folate", "µg"));
    _nut.add(new Nutrient.newNutrient("Folic Acid", "g"));
    _nut.add(new Nutrient.newNutrient("Iodine", "µg"));
    _nut.add(new Nutrient.newNutrient("Iron", "mg"));
    _nut.add(new Nutrient.newNutrient("Magnesium", "mg"));
    _nut.add(new Nutrient.newNutrient("Manganese", "mg"));
    _nut.add(new Nutrient.newNutrient("Phosphorous", "mg"));
    _nut.add(new Nutrient.newNutrient("Selenium", "µg"));
    _nut.add(new Nutrient.newNutrient("Sodium", "mg"));
    _nut.add(new Nutrient.newNutrient("Sugar", "g"));
    _nut.add(new Nutrient.newNutrient("Zinc", "mg"));
  }
}

class Schedule {
  List<String> mealsToGenerate;
  bool sideDishes;
  int servings;
  bool populateCalendar;
  MealTimes mealTimes;
  int daysOut;

  Schedule({
    this.mealsToGenerate,
    this.sideDishes,
    this.servings,
    this.populateCalendar,
    this.mealTimes,
    this.daysOut,
  });

  factory Schedule.fromRawJson(String str) => Schedule.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Schedule.newSchedulePreferences() => new Schedule(
    mealsToGenerate: new List<String>(),
    sideDishes: false,
    servings: 4,
    populateCalendar: false,
    mealTimes: new MealTimes.newMealTimes(),
    daysOut: 0,
  );

  factory Schedule.fromJson(Map<String, dynamic> json) => new Schedule(
    mealsToGenerate: json["mealsToGenerate"] == null ? null : new List<String>.from(json["mealsToGenerate"].map((x) => x)),
    sideDishes: json["sideDishes"] == null ? null : json["sideDishes"],
    servings: json["servings"] == null ? null : json["servings"],
    populateCalendar: json["populateCalendar"] == null ? null : json["populateCalendar"],
    mealTimes: json["mealTimes"] == null ? null : MealTimes.fromJson(json["mealTimes"]),
    daysOut: json["daysOut"] == null ? null : json["daysOut"],
  );

  Map<String, dynamic> toJson() => {
    "mealsToGenerate": mealsToGenerate == null ? null : new List<dynamic>.from(mealsToGenerate.map((x) => x)),
    "sideDishes": sideDishes == null ? null : sideDishes,
    "servings": servings == null ? null : servings,
    "populateCalendar": populateCalendar == null ? null : populateCalendar,
    "mealTimes": mealTimes == null ? null : mealTimes.toJson(),
    "daysOut": daysOut == null ? null : daysOut,
  };
}

class MealTimes {
  TimeOfDay breakfast;
  TimeOfDay lunch;
  TimeOfDay dinner;

  MealTimes({
    this.breakfast,
    this.lunch,
    this.dinner,
  });

  factory MealTimes.fromRawJson(String str) => MealTimes.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MealTimes.newMealTimes() => new MealTimes(
    breakfast: new TimeOfDay(hour: 0, minute: 0),
    lunch: new TimeOfDay(hour: 0, minute: 0),
    dinner: new TimeOfDay(hour: 0, minute: 0),
  );

  factory MealTimes.fromJson(Map<String, dynamic> json) => new MealTimes(
    breakfast: json["breakfast"] == null ? null : new TimeOfDay(hour: int.parse(json["breakfast"].split(":")[0]), minute: int.parse(json["breakfast"].split(":")[1])),
    lunch: json["lunch"] == null ? null : new TimeOfDay(hour: int.parse(json["lunch"].split(":")[0]), minute: int.parse(json["lunch"].split(":")[1])),
    dinner: json["dinner"] == null ? null : new TimeOfDay(hour: int.parse(json["dinner"].split(":")[0]), minute: int.parse(json["dinner"].split(":")[1])),
  );

  Map<String, dynamic> toJson() => {
    "breakfast": breakfast == null ? null : breakfast.toString(),
    "lunch": lunch == null ? null : lunch.toString(),
    "dinner": dinner == null ? null : dinner.toString(),
  };
}
