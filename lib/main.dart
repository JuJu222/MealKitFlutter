import 'package:flutter/material.dart';
import 'package:meal_kit_flutter/views/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MealKit',
      theme: ThemeData(

          //Pergantian Warna dan Text pada bar
          colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: primaryColor,
              onPrimary: secondaryColor,
              secondary: secondaryColor),
          appBarTheme: AppBarTheme(elevation: 0),
          textTheme: myTextTheme),
      initialRoute: LoginPage.routeName,
      routes: {
        LoginPage.routeName: (context) => LoginPage(),
        HomePage.routeName: (context) => HomePage(),
        RegisterPage.routeName: (context) => RegisterPage()
      },
    );
  }
}
