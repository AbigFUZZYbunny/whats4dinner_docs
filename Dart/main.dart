// This example shows a [Scaffold] with an [AppBar], a [BottomAppBar] and a
// [FloatingActionButton]. The [body] is a [Text] placed in a [Center] in order
// to center the text within the [Scaffold] and the [FloatingActionButton] is
// centered and docked within the [BottomAppBar] using
// [FloatingActionButtonLocation.centerDocked]. The [FloatingActionButton] is
// connected to a callback that increments a counter.
import 'package:flutter/material.dart';
import 'package:w4d_test/theme.dart';
import 'package:w4d_test/widgets/meal_details_info.dart';
import 'package:w4d_test/colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Code Sample for material.Scaffold',
      theme: buildTheme(),
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  child: Image.network(
                    'https://spoonacular.com/recipeImages/613300-556x370.jpg',
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                  color: PrimaryColor,
                  height: 200.0,
                ),
                Scaffold(
                  appBar: AppBar(title: new Text('Hello'),
                    backgroundColor: Colors.transparent,
                    elevation: 0.0,
                  ),
                  backgroundColor: Colors.transparent,
                  body: Container(
                    color: Colors.white,
                    child: Center(
                      child: Text('Hello how are you?'),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: double.maxFinite,
              color: Colors.white,
              child: TabBar(
                isScrollable: true,
                indicatorColor: SecondaryColor,
                tabs: [
                  Tab(text: "Information"),
                  Tab(
                    child: Row(
                      children: <Widget>[
                        Text("Diets & Allergies"),
                        Container(
                          padding: EdgeInsets.all(2),
                          decoration: new BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          constraints: BoxConstraints(
                            minWidth: 14,
                            minHeight: 14,
                          ),
                          child: Text(
                            '3',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    text: "Nutrition",
                  ),
                  Tab(
                    child: Row(
                      children: <Widget>[
                        Text("Ingredients"),
                        Container(
                          padding: EdgeInsets.all(2),
                          decoration: new BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          constraints: BoxConstraints(
                            minWidth: 14,
                            minHeight: 14,
                          ),
                          child: Text(
                            '10 / 12',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Tab(
                      text: "Steps"
                  ),
                ],
              ),
            ),
            Container(
              height: double.maxFinite,
              child: TabBarView(
                children: [
                  MealDetailsInfo(),
                  Text("Diets & Allergies"),
                  Text("Nutrition"),
                  Text("Ingredients"),
                  Text("Steps"),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Row(
          children: <Widget> [
            Expanded(
              child: RaisedButton(
                child: Text("Hello"),
              ),
            ),
            Expanded(
              child: RaisedButton(
                child: Text("Hello"),
              ),
            ),
            Expanded(
              child: RaisedButton(
                child: Text("Hello"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void btnPressed(){
    print("button Pressed");
  }
}
