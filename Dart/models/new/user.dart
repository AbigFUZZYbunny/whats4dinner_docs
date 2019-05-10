// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';
import 'subscription_record.dart';
import 'recipe.dart';
import 'restaurant.dart';
import 'ingredient_item.dart';
import 'user_limits.dart';
import 'preferences.dart';
import 'meal.dart';

class User {
  List<SubscriptionRecord> subscription;
  Limits limits;
  Preferences preferences;
  Groceries groceries;
  List<Meal> schedule;
  UserFavorites favorites;

  User({
    this.subscription,
    this.limits,
    this.preferences,
    this.groceries,
    this.schedule,
    this.favorites,
  });

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => new User(
    subscription: json["subscription"] == null ? null : new List<SubscriptionRecord>.from(json["subscription"].map((x) => SubscriptionRecord.fromJson(x))),
    limits: json["limits"] == null ? null : Limits.fromJson(json["limits"]),
    preferences: json["preferences"] == null ? null : Preferences.fromJson(json["preferences"]),
    groceries: json["groceries"] == null ? null : Groceries.fromJson(json["groceries"]),
    schedule: json["schedule"] == null ? null : new List<Meal>.from(json["schedule"].map((x) => Meal.fromJson(x))),
    favorites: json["favorites"] == null ? null : UserFavorites.fromJson(json["favorites"]),
  );

  Map<String, dynamic> toJson() => {
    "subscription": subscription == null ? null : new List<dynamic>.from(subscription.map((x) => x.toJson())),
    "limits": limits == null ? null : limits.toJson(),
    "preferences": preferences == null ? null : preferences.toJson(),
    "groceries": groceries == null ? null : groceries.toJson(),
    "schedule": schedule == null ? null : new List<dynamic>.from(schedule.map((x) => x.toJson())),
    "favorites": favorites == null ? null : favorites.toJson(),
  };
}

class UserFavorites {
  List<Recipe> recipes;
  List<Restaurant> restaurants;

  UserFavorites({
    this.recipes,
    this.restaurants,
  });

  factory UserFavorites.fromRawJson(String str) => UserFavorites.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserFavorites.fromJson(Map<String, dynamic> json) => new UserFavorites(
    recipes: json["recipes"] == null ? null : new List<Recipe>.from(json["recipes"].map((x) => Recipe.fromJson(x))),
    restaurants: json["restaraunts"] == null ? null : new List<Restaurant>.from(json["restaraunts"].map((x) => Restaurant.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "recipes": recipes == null ? null : new List<dynamic>.from(recipes.map((x) => x.toJson())),
    "restaraunts": restaurants == null ? null : new List<dynamic>.from(restaurants.map((x) => x.toJson())),
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

  factory Groceries.fromRawJson(String str) => Groceries.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Groceries.fromJson(Map<String, dynamic> json) => new Groceries(
    required: json["required"] == null ? null : new List<IngredientItem>.from(json["required"].map((x) => IngredientItem.fromJson(x))),
    stock: json["stock"] == null ? null : new List<IngredientItem>.from(json["stock"].map((x) => IngredientItem.fromJson(x))),
    shopping: json["shopping"] == null ? null : new List<IngredientItem>.from(json["shopping"].map((x) => IngredientItem.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "required": required == null ? null : new List<dynamic>.from(required.map((x) => x.toJson())),
    "stock": stock == null ? null : new List<dynamic>.from(stock.map((x) => x.toJson())),
    "shopping": shopping == null ? null : new List<dynamic>.from(shopping.map((x) => x)),
  };
}
