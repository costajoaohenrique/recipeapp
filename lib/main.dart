import 'package:flutter/material.dart';
import 'package:recipeapp/screens/home/home.dart';

void main() => runApp(RecipeApp());

class RecipeApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Home(),
    );
  }
}
