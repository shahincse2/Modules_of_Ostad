import 'package:flutter/material.dart';
import 'size.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Responsive',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Wrap(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Text('Width = ${mediaQuery.size.width.toString()}, '),
              Text('Height = ${mediaQuery.size.height.toString()}, '),
              Text('Flipped = ${mediaQuery.size.flipped}, '),
              Text('Ratio = ${mediaQuery.devicePixelRatio}'),
              SizedBox(height: 20, width: 20,),
              if (mediaQuery.size.width < mobile)
                Text('Portrait')
              else if (mediaQuery.size.width > mobile)
                Text('Landscape')
            ],
          ),
        ]
        ,
      )
      ,
    );
  }
}
