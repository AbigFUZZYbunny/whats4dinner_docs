import 'package:flutter/material.dart';
import 'package:w4d_test/colors.dart';

class MealDetailsInfo extends StatelessWidget {

  MealDetailsInfo();

  @override
  Widget build(BuildContext context) {
      return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child:
                        Card(
                          margin: const EdgeInsets.fromLTRB(10, 5, 5, 5),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                            Column(
                              children: [
                                Icon(
                                  Icons.timer,
                                  size: 40,
                                  color: DarkGray,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "15",
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Minutes",
                                  style: TextStyle(fontSize: 20.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child:
                        Card(
                          margin: const EdgeInsets.fromLTRB(5, 5, 10, 5),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                            Column(
                              children: [
                                Icon(
                                  Icons.list,
                                  size: 40,
                                  color: Colors.red,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "4 / 10",
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Ingredients",
                                  style: TextStyle(fontSize: 20.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child:
                        Card(
                          margin: const EdgeInsets.fromLTRB(10, 5, 5, 5),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                            Column(
                              children: [
                                Icon(
                                  Icons.format_align_justify,
                                  size: 40,
                                  color: DarkGray,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "4",
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Steps",
                                  style: TextStyle(fontSize: 20.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child:
                        Card(
                          margin: const EdgeInsets.fromLTRB(5, 5, 10, 5),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                            Column(
                              children: [
                                Icon(
                                  Icons.fastfood,
                                  size: 40,
                                  color: DarkGray,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "American",
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Cuisine",
                                  style: TextStyle(fontSize: 20.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child:
                        Card(
                          margin: const EdgeInsets.fromLTRB(10, 5, 5, 5),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                            Column(
                              children: [
                                Icon(
                                  Icons.attach_money,
                                  size: 40,
                                  color: DarkGray,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "1.49",
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Per Serving",
                                  style: TextStyle(fontSize: 20.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child:
                        Card(
                          margin: const EdgeInsets.fromLTRB(5, 5, 10, 5),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                            Column(
                              children: [
                                Icon(
                                  Icons.assessment,
                                  size: 40,
                                  color: PrimaryColor,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "295",
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Calories",
                                  style: TextStyle(fontSize: 20.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child:
                        Card(
                          margin: const EdgeInsets.fromLTRB(10, 5, 5, 5),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                            Column(
                              children: [
                                Icon(
                                  Icons.supervisor_account,
                                  size: 40,
                                  color: Colors.green,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "3",
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Diets",
                                  style: TextStyle(fontSize: 20.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child:
                        Card(
                          margin: const EdgeInsets.fromLTRB(5, 5, 10, 5),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                            Column(
                              children: [
                                Icon(
                                  Icons.warning,
                                  size: 40,
                                  color: Colors.green,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "No",
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Allergies",
                                  style: TextStyle(fontSize: 20.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Card(
                          margin: const EdgeInsets.fromLTRB(10, 5, 5, 5),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Credit: Nutritionist in the Kitchen",
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      );

      /*SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child:
                Card(
                  margin: const EdgeInsets.fromLTRB(10, 5, 5, 5),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                    Column(
                      children: [
                        Icon(
                          Icons.timer,
                          size: 40,
                          color: DarkGray,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "15",
                          style: TextStyle(fontSize: 20.0),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Minutes",
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child:
                Card(
                  margin: const EdgeInsets.fromLTRB(5, 5, 10, 5),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                    Column(
                      children: [
                        Icon(
                          Icons.list,
                          size: 40,
                          color: Colors.red,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "4 / 10",
                          style: TextStyle(fontSize: 20.0),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Ingredients",
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child:
                Card(
                  margin: const EdgeInsets.fromLTRB(10, 5, 5, 5),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                    Column(
                      children: [
                        Icon(
                          Icons.format_align_justify,
                          size: 40,
                          color: DarkGray,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "4",
                          style: TextStyle(fontSize: 20.0),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Steps",
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child:
                Card(
                  margin: const EdgeInsets.fromLTRB(5, 5, 10, 5),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                    Column(
                      children: [
                        Icon(
                          Icons.fastfood,
                          size: 40,
                          color: DarkGray,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "American",
                          style: TextStyle(fontSize: 20.0),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Cuisine",
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child:
                Card(
                  margin: const EdgeInsets.fromLTRB(10, 5, 5, 5),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                    Column(
                      children: [
                        Icon(
                          Icons.attach_money,
                          size: 40,
                          color: DarkGray,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "1.49",
                          style: TextStyle(fontSize: 20.0),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Per Serving",
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child:
                Card(
                  margin: const EdgeInsets.fromLTRB(5, 5, 10, 5),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                    Column(
                      children: [
                        Icon(
                          Icons.assessment,
                          size: 40,
                          color: PrimaryColor,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "295",
                          style: TextStyle(fontSize: 20.0),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Calories",
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child:
                Card(
                  margin: const EdgeInsets.fromLTRB(10, 5, 5, 5),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                    Column(
                      children: [
                        Icon(
                          Icons.supervisor_account,
                          size: 40,
                          color: Colors.green,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "3",
                          style: TextStyle(fontSize: 20.0),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Diets",
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child:
                Card(
                  margin: const EdgeInsets.fromLTRB(5, 5, 10, 5),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                    Column(
                      children: [
                        Icon(
                          Icons.warning,
                          size: 40,
                          color: Colors.green,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "No",
                          style: TextStyle(fontSize: 20.0),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Allergies",
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Card(
                  margin: const EdgeInsets.fromLTRB(10, 5, 5, 5),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Credit: Nutritionist in the Kitchen",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );*/
  }
}