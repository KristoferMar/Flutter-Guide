import 'package:flutter/material.dart';
import './categories_screen.dart';
import 'package:meals_app/category_meals_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Railway',
          textTheme: ThemeData.light().textTheme
            ..copyWith(
              body1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              body2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              title: TextStyle(fontSize: 20, fontFamily: 'RobotoCondensed'),
            )),
      // Home is the widget which gets loaded first on app start.
      home: CategoriesScreen(),
      // Default route on opening the app.
      initialRoute: '/',
      routes: {
        // '/': (ctx) => CategoriesScreen(),
        CategoryMealScreen.routeName: (ctx) => CategoryMealScreen(),
      },
    );
  }
}
