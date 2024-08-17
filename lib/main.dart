import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void mySnackBar(String message, BuildContext context) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'MyApp App',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: false,
          backgroundColor: Colors.blue,
          toolbarHeight: 80,
          elevation: 50,
          toolbarOpacity: 0.5,
          actions: [
            Builder(
              builder: (context) {
                return IconButton(
                  onPressed: () {
                    mySnackBar('Here You Can Search', context);
                  },
                  icon: const Icon(Icons.search, color: Colors.white),
                );
              },
            ),
            Builder(
              builder: (context) {
                return IconButton(
                  onPressed: () {
                    mySnackBar('Here You Can Add files', context);
                  },
                  icon: const Icon(Icons.add_a_photo, color: Colors.white),
                );
              },
            ),
            Builder(
              builder: (context) {
                return IconButton(
                  onPressed: () {
                    mySnackBar('Here You Can View Notifications', context);
                  },
                  icon: const Icon(Icons.notifications_active,
                      color: Colors.white),
                );
              },
            ),
          ],
        ),
        body: const Center(
          child: Text('MyApp App'),
        ),
      ),
    );
  }
}
