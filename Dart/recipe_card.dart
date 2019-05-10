import 'package:flutter/material.dart';
import 'package:w4d_test/colors.dart';

class RecipeCard extends StatelessWidget {
  final bool inFavorites;
  final Function onFavoriteButtonPressed;
  final int availIngredients;
  final int totalIngredients;

  RecipeCard(this.inFavorites,this.onFavoriteButtonPressed,this.availIngredients, this.totalIngredients);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0, bottom: 5.0),
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Test Recipe",
                      style: Theme.of(context).textTheme.headline,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Stack(
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 16.0 / 9.0,
                      child: Image.network(
                        "https://spoonacular.com/recipeImages/470042-312x231.jpg",
                        fit: BoxFit.cover,
                        ),
                    ),
                    Positioned(
                      child:
                        RawMaterialButton(
                          constraints: const BoxConstraints(minWidth: 40.0, minHeight: 40.0),
                          onPressed: () => onFavoriteButtonPressed(),
                          child: Icon(
                            // Conditional expression:
                            // show "favorite" icon or "favorite border" icon depending on widget.inFavorites:
                            inFavorites == true ? Icons.star : Icons.star_border,
                            color: DarkGray,
                          ),
                          elevation: 2.0,
                          fillColor: OffWhite,
                          shape: CircleBorder(),
                        ),
                      top: 20,
                      right: 20,
                    ),
                  ],
                ),
              ),
              //need to add a tab group here with Overview, Ingredients, Allergies, and Diets
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.format_list_numbered,
                              size: 20.0,
                              color: DarkGray,
                            ),
                            SizedBox(height: 5),
                            Text(
                              "5",
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Steps",
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.timer,
                              size: 20.0,
                              color: DarkGray,
                            ),
                            SizedBox(height: 5),
                            Text(
                              "15",
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Minutes",
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.fastfood,
                              color:  DarkGray,
                              size: 20.0,
                            ),
                            SizedBox(height: 5),
                            Text(
                              "American",
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Cuisine",
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.format_align_center,
                              size: 20.0,
                              color: DarkGray,
                            ),
                            SizedBox(height: 5),
                            Text(
                              "3",
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Diets",
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                            children: [
                              Icon(
                                2 == 0 ? Icons.check_circle : Icons.cancel,
                                color:  2 == 0 ? Colors.green : Colors.red,
                                size: 20.0,
                              ),
                              SizedBox(height: 5),
                              Text(
                                "2",
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Allergens",
                              ),
                            ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.format_list_bulleted,
                              size: 20.0,
                              color: DarkGray,
                            ),
                            SizedBox(height: 5),
                            Text(
                              "30",
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Calories",
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              availIngredients == totalIngredients ? Icons.assignment_turned_in  : Icons.assignment_late,
                              color:  availIngredients == totalIngredients ? Colors.green : Colors.red,
                              size: 20.0,
                            ),
                            SizedBox(height: 5),
                            Text(
                              availIngredients.toString() + " / " + totalIngredients.toString(),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Ingredients",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}