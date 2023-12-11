import 'package:flutter/material.dart';
import 'package:hello_world_app/src/screens/counter_functions_screen.dart';

void main() {
  // here we are going to run our app
  /* try to avoid print in production */
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // constructor to initialize the widget
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // this is what is in our app
    return MaterialApp(
        // take out the banner
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
        home: const CounterFunctionsScreen());
  }
}
