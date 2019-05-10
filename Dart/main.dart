// This example shows a [Scaffold] with an [AppBar], a [BottomAppBar] and a
// [FloatingActionButton]. The [body] is a [Text] placed in a [Center] in order
// to center the text within the [Scaffold] and the [FloatingActionButton] is
// centered and docked within the [BottomAppBar] using
// [FloatingActionButtonLocation.centerDocked]. The [FloatingActionButton] is
// connected to a callback that increments a counter.
import 'package:w4d_test/recipe_card.dart';
import 'package:flutter/material.dart';
import 'package:w4d_test/theme.dart';
import 'package:w4d_test/dynamic_appbar.dart';

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
    return Scaffold(
        body:
        Stack(
          children: [
            DynamicAppBar(height: 150),
            Column(
              children: [
                RecipeCard(false,btnPressed,10,10),
              ],
            ),
          ]
        ),
    );
  }

  void btnPressed(){
    print("button Pressed");
  }
}
