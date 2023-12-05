import 'package:build_ui/screen_three.dart';
import 'package:build_ui/screen_two.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     initialRoute: HomeScreen.id,
     routes: {
        HomeScreen.id : (context) => HomeScreen(),
       ScreenTwo.id : (context) => ScreenTwo(),
       ScreenThree.id : (context) => ScreenThree(),
     },
     // home: HomeScreen(),
    );
  }
}


