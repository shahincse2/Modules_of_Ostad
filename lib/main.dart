import 'package:flutter/material.dart';
import 'package:modules_of_ostad/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //     drawerTheme: DrawerThemeData(backgroundColor: Colors.black),
      //     bottomNavigationBarTheme: BottomNavigationBarThemeData(
      //       backgroundColor: Colors.black,
      //     )),
      // darkTheme: ThemeData(
      //     bottomNavigationBarTheme:
      //         BottomNavigationBarThemeData(backgroundColor: Colors.black)),
      home: HomeData(),
    );
  }
}
