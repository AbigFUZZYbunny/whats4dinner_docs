// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';
import 'recipe_item.dart';
import 'preferences.dart';
import 'ingredient_item.dart';

class User {
  Preferences preferences;
  Groceries groceries;
  Schedule schedule;
  Favorites favorites;

  User({
    this.preferences,
    this.groceries,
    this.schedule,
    this.favorites,
  });

  factory User.fromJson(String str) => User.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory User.fromMap(Map<String, dynamic> json) => new User(
    preferences: json["preferences"] == null ? null : Preferences.fromMap(json["preferences"]),
    groceries: json["groceries"] == null ? null : Groceries.fromMap(json["groceries"]),
    schedule: json["schedule"] == null ? null : Schedule.fromMap(json["schedule"]),
    favorites: json["favorites"] == null ? null : Favorites.fromMap(json["favorites"]),
  );

  Map<String, dynamic> toMap() => {
    "preferences": preferences == null ? null : preferences.toMap(),
    "groceries": groceries == null ? null : groceries.toMap(),
    "schedule": schedule == null ? null : schedule.toMap(),
    "favorites": favorites == null ? null : favorites.toMap(),
  };

  factory User.newUser() => new User(
    preferences: Preferences.newUser(),
    groceries: Groceries.newUser(),
    schedule: Schedule.newUser(),
    favorites: Favorites.newUser(),
  );
}

class Favorites {
  List<Recipe> meal;
  List<Recipe> side;
  List<Recipe> dessert;

  Favorites({
    this.meal,
    this.side,
    this.dessert,
  });

  factory Favorites.fromJson(String str) => Favorites.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Favorites.fromMap(Map<String, dynamic> json) => new Favorites(
    meal: json["meal"] == null ? null : new List<Recipe>.from(json["meal"].map((x) => Recipe.fromMap(x))),
    side: json["side"] == null ? null : new List<dynamic>.from(json["side"].map((x) => x)),
    dessert: json["dessert"] == null ? null : new List<dynamic>.from(json["dessert"].map((x) => x)),
  );

  factory Favorites.newUser() => new Favorites(
    meal: new List<Recipe>(),
    side: new List<Recipe>(),
  );

  Map<String, dynamic> toMap() => {
    "meal": meal == null ? null : new List<dynamic>.from(meal.map((x) => x.toMap())),
    "side": side == null ? null : new List<dynamic>.from(side.map((x) => x)),
    "dessert": dessert == null ? null : new List<dynamic>.from(dessert.map((x) => x)),
  };
}

class Groceries {
  List<IngredientItem> required;
  List<IngredientItem> stock;
  List<IngredientItem> shopping;

  Groceries({
    this.required,
    this.stock,
    this.shopping,
  });

  factory Groceries.fromJson(String str) => Groceries.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Groceries.fromMap(Map<String, dynamic> json) => new Groceries(
    required: json["required"] == null ? null : new List<IngredientItem>.from(json["required"].map((x) => IngredientItem.fromMap(x))),
    stock: json["stock"] == null ? null : new List<IngredientItem>.from(json["stock"].map((x) => IngredientItem.fromMap(x))),
    shopping: json["shopping"] == null ? null : new List<IngredientItem>.from(json["shopping"].map((x) => IngredientItem.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "required": required == null ? null : new List<dynamic>.from(required.map((x) => x.toMap())),
    "stock": stock == null ? null : new List<dynamic>.from(stock.map((x) => x.toMap())),
    "shopping": shopping == null ? null : new List<dynamic>.from(shopping.map((x) => x)),
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

  factory Ingredients.fromJson(String str) => Ingredients.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Ingredients.fromMap(Map<String, dynamic> json) => new Ingredients(
    favoritesFilterLevel: json["favoritesFilterLevel"] == null ? null : json["favoritesFilterLevel"],
    favorites: json["favorites"] == null ? null : new List<IngredientItem>.from(json["favorites"].map((x) => x)),
    ignored: json["ignored"] == null ? null : new List<IngredientItem>.from(json["ignored"].map((x) => x)),
  );

  Map<String, dynamic> toMap() => {
    "favoritesFilterLevel": favoritesFilterLevel == null ? null : favoritesFilterLevel,
    "favorites": favorites == null ? null : new List<dynamic>.from(favorites.map((x) => x)),
    "ignored": ignored == null ? null : new List<dynamic>.from(ignored.map((x) => x)),
  };
}

class Schedule {
  List<Recipe> meal;
  List<Recipe> side;
  List<Recipe> dessert;

  Schedule({
    this.meal,
    this.side,
    this.dessert,
  });

  factory Schedule.fromJson(String str) => Schedule.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Schedule.fromMap(Map<String, dynamic> json) => new Schedule(
    meal: json["meal"] == null ? null : new List<Recipe>.from(json["meal"].map((x) => Recipe.fromMap(x))),
    side: json["side"] == null ? null : new List<Recipe>.from(json["side"].map((x) => Recipe.fromMap(x))),
    dessert: json["dessert"] == null ? null : new List<Recipe>.from(json["dessert"].map((x) => Recipe.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "meal": meal == null ? null : new List<dynamic>.from(meal.map((x) => x.toMap())),
    "side": side == null ? null : new List<dynamic>.from(side.map((x) => x)),
    "dessert": dessert == null ? null : new List<dynamic>.from(dessert.map((x) => x)),
  };
}