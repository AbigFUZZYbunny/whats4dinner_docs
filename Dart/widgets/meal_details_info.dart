import 'package:flutter/material.dart';
import 'package:w4d_test/colors.dart';
import 'package:whats4dinner/models/meal.dart';

class MealDetailsInfo extends StatelessWidget {
  Meal meal;

  MealDetailsInfo(this.meal);

  @override
  Widget build(BuildContext context) {
    return ListView(
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
          ],
        ),
      ],
    );
  }
}