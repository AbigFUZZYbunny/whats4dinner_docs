import 'package:w4d_test/models/recipe.dart';
import 'package:w4d_test/models/temp/state.dart';
import 'dart:math' show Random;
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

class Spoonacular{
  Future<Recipe> getRandomRecipe(int mealType) async{
    String incIngredients = "";
    String exIngredients = "";
    String cuisines = "";
    String allergies = buildAllergies();
    String diets = buildDiets();
    Map<String, double> nutrients = new Map<String, double>();
    var queryParameters = {
      'intolerances': allergies,
      'diet': diets,
      'type': "main course",
      'ranking': 1,
      'fillIngredients': true,
      'instructionsRequired': true,
      'addRecipeInformation': true,
    };
    if(StateWidget.subLvl > 1) {
      incIngredients = includeIngredients();
      exIngredients = excludeIngredients();
      cuisines = buildCuisine();
      nutrients.addAll(buildNutrients(mealType));
      queryParameters.addAll({
        'includeIngredients': incIngredients,
        'excludeIngredients': exIngredients,
        'cuisine': cuisines,
      });
      queryParameters.addAll(nutrients);
    }

    var uri = Uri.https('https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com', '/recipes/searchComplex', queryParameters);
    var response = await http.get(
        uri,
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
          "X-RapidAPI-Host":"spoonacular-recipe-food-nutrition-v1.p.rapidapi.com",
          "X-RapidAPI-Key": "FYiUBYqYvfmshCovVjy8PmXhteQbp1E8Ie9jsnTc7qON8jK9mM",
        },
    );

    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSON
      return Recipe.fromJson(json.decode(response.body));
    } else {
      // If that response was not OK, throw an error.
      throw Exception('Failed to retrieve recipe');
    }
  }

  String buildAllergies(){
    List<String> _ret = new List<String>();
    StateWidget.user.preferences.allergies.forEach((key, value) => (){
      if(value){
        _ret.add(key);
      }
    });
    String ret = _ret.join(', ');
    return ret;
  }

  String buildDiets(){
    var random = new Random();
    List<String> _ret = new List<String>();
    if(StateWidget.user.preferences.diets.filterLevel == 2) {
      StateWidget.user.preferences.diets.diets.forEach((key, value) => (){
        if(value){
          _ret.add(key);
        }
      });
    }else if(StateWidget.user.preferences.diets.filterLevel == 1){
      StateWidget.user.preferences.diets.diets.forEach((key, value) => () {
        if (random.nextInt(100) >= 70) {
          if (value) {
            _ret.add(key);
          }
        }
      });
    }
    String ret = _ret.join(', ');
    return ret;
  }

  Map<String, double> buildNutrients(int mealType){
    Map<String, double> nutrients = new Map<String, double>();
    double multiplier;
    switch(mealType){
        case 0:
          switch(StateWidget.user.preferences.nutrition.breakfast.filterLevel){
            case 0:
              multiplier = 0;
              break;
            case 1:
              multiplier = 1.25;
              break;
            case 2:
              multiplier = 1;
              break;
          }
          for(var n in StateWidget.user.preferences.nutrition.breakfast.nutrients) {
            double _minval = n.min * multiplier;
            double _maxval = n.min * multiplier;
            if(_maxval > 0){
              nutrients.putIfAbsent("max" + n.qName, () => _maxval);
            }
            if(_minval > 0 && _minval < _maxval){
              nutrients.putIfAbsent("min" + n.qName, () => _minval);
            }
          }
          break;
        case 1:
          switch(StateWidget.user.preferences.nutrition.lunch.filterLevel){
            case 0:
              multiplier = 0;
              break;
            case 1:
              multiplier = 1.25;
              break;
            case 2:
              multiplier = 1;
              break;
          }
          for(var n in StateWidget.user.preferences.nutrition.lunch.nutrients) {
            double _minval = n.min * multiplier;
            double _maxval = n.min * multiplier;
            if(_maxval > 0){
              nutrients.putIfAbsent("max" + n.qName, () => _maxval);
            }
            if(_minval > 0 && _minval < _maxval){
              nutrients.putIfAbsent("min" + n.qName, () => _minval);
            }
          }
          break;
        case 2:
          switch(StateWidget.user.preferences.nutrition.dinner.filterLevel){
            case 0:
              multiplier = 0;
              break;
            case 1:
              multiplier = 1.25;
              break;
            case 2:
              multiplier = 1;
              break;
          }
          for(var n in StateWidget.user.preferences.nutrition.dinner.nutrients) {
            double _minval = n.min * multiplier;
            double _maxval = n.min * multiplier;
            if(_maxval > 0){
              nutrients.putIfAbsent("max" + n.qName, () => _maxval);
            }
            if(_minval > 0 && _minval < _maxval){
              nutrients.putIfAbsent("min" + n.qName, () => _minval);
            }
          }
          break;
    }
    switch(StateWidget.user.preferences.nutrition.meal.filterLevel){
      case 0:
        multiplier = 0;
        break;
      case 1:
        multiplier = 1.25;
        break;
      case 2:
        multiplier = 1;
        break;
    }
    for(var n in StateWidget.user.preferences.nutrition.meal.nutrients) {
      double _minval = n.min * multiplier;
      double _maxval = n.min * multiplier;
      if(_maxval > 0){
        nutrients.putIfAbsent("max" + n.qName, () => _maxval);
      }
      if(_minval > 0 && _minval < _maxval){
        nutrients.putIfAbsent("min" + n.qName, () => _minval);
      }
    }
    return nutrients;
  }

  String buildCuisine(){
      var random = new Random();
      List<String> _ret = new List<String>();
      if(StateWidget.user.preferences.cuisines.cuisineWeight == 2) {
        for(var _c in StateWidget.user.preferences.cuisines.cuisineTypes){
          if(random.nextInt(100) >= 70) {
            _ret.add(_c);
          }
        }
      }else if(StateWidget.user.preferences.cuisines.cuisineWeight == 1){
        for(var _c in StateWidget.user.preferences.cuisines.cuisineTypes){
          if(random.nextInt(100) >= 30) {
            _ret.add(_c);
          }
        }
      }
      String ret = _ret.join(', ');
      return ret;
  }

  String includeIngredients(){
    List<String> _ret = new List<String>();
    var random = new Random();
    if(StateWidget.user.preferences.ingredients.favoritesFilterLevel == 2) {
      for(var _ing in StateWidget.user.preferences.ingredients.favorites){
        if(random.nextInt(100) >= 70) {
          _ret.add(_ing.name);
        }
      }
    }else if(StateWidget.user.preferences.ingredients.favoritesFilterLevel == 1){
      for(var _ing in StateWidget.user.preferences.ingredients.favorites){
        if(random.nextInt(100) >= 30){
          _ret.add(_ing.name);
        }
      }
    }
    for(var _i in StateWidget.user.groceries.stock){
      _ret.add(_i.name);
    }
    String ret = _ret.join(', ');
    return ret;
  }

  String excludeIngredients(){
    List<String> _ret = new List<String>();
    for(var _ing in StateWidget.user.preferences.ingredients.ignored){
      _ret.add(_ing.name);
    }
    String ret = _ret.join(', ');
    return ret;
  }
}