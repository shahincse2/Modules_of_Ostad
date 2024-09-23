import 'package:flutter/material.dart';
import 'package:modules_of_ostad/ui/screens/splash_screen.dart';

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          displaySmall: TextStyle(fontSize: 36, fontWeight: FontWeight.w600,),
        )
      ),
      home: const SplashScreen(),
    );
  }
}
