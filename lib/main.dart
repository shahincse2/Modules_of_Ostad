import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> friendList = [
    'Ami',
    'Tumi',
    'ar',
    'se',
    'kee',
    'bolo',
    'ajbo',
    'jabo na',
    'karon',
    'se',
    'kotha',
    'boleni',
    'tay',
    'Ami',
    'Tumi',
    'ar',
    'se',
    'kee',
    'bolo',
    'ajbo',
    'jabo na',
    'karon',
    'se',
    'kotha',
    'boleni',
    'tay',
    'Ami',
    'Tumi',
    'ar',
    'se',
    'kee',
    'bolo',
    'ajbo',
    'jabo na',
    'karon',
    'se',
    'kotha',
    'boleni',
    'tay'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'List View',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        // body: ListView(
        //
        //   children: [
        //     SizedBox(
        //       width: 100,
        //       height: 100,
        //       child: Center(
        //         child: Text('data'),
        //       )
        //     ),
        //     SizedBox(
        //         width: 100,
        //         height: 100,
        //         child: Center(
        //           child: Text('dfddddddddd'),
        //         )
        //     ),
        //     SizedBox(
        //         width: 100,
        //         height: 100,
        //         child: Center(
        //           child: Text('fffffffffffff'),
        //         )
        //     ),
        //     SizedBox(
        //         width: 100,
        //         height: 100,
        //         child: Center(
        //           child: Text('sssssss'),
        //         )
        //     ),
        //     SizedBox(
        //         width: 100,
        //         height: 100,
        //         child: Center(
        //           child: Text('ffff'),
        //         )
        //     ),
        //     SizedBox(
        //         width: 100,
        //         height: 100,
        //         child: Center(
        //           child: Text('ads'),
        //         )
        //     ),
        //     SizedBox(
        //         width: 100,
        //         height: 100,
        //         child: Center(
        //           child: Text('fasdfasdfasdf'),
        //         )
        //     ),
        //     SizedBox(
        //         width: 100,
        //         height: 100,
        //         child: Center(
        //           child: Text('fasd'),
        //         )
        //     ),
        //     SizedBox(
        //         width: 100,
        //         height: 100,
        //         child: Center(
        //           child: Text('fasd'),
        //         )
        //     ),
        //     SizedBox(
        //         width: 100,
        //         height: 100,
        //         child: Center(
        //           child: Text('fasd'),
        //         )
        //     ),
        //     SizedBox(
        //         width: 100,
        //         height: 100,
        //         child: Center(
        //           child: Text('fasdf'),
        //         )
        //     ),
        //   ],
        // ),
        // body: ListView.builder(
        //     itemCount: 100,
        //     itemBuilder: (context, index) {
        //       return SizedBox(
        //         height: 100,
        //         width: 100,
        //         child: Center(
        //           child: Text('box no ${index.toString()}'),
        //         ),
        //       );
        //     }),

        // body: ListView.builder(
        //   itemCount: friendList.length,
        //   itemBuilder: (context, index){
        //     return Text(friendList[index]);
        //   },
        //   scrollDirection: Axis.horizontal,
        //   padding: EdgeInsets.all(15),
        //   addRepaintBoundaries: false,
        // ),

        //This is for just gridview in body with divider and text through line....
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5.0,
            ),
            itemCount: friendList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  //Text(index.toString()),
                  //Text(friendList[index]),
                  Center(
                    child: Image.network(
                      "https://e7.pngegg.com/pngimages/114/142/png-clipart-kylian-mbappe-2018-world-cup-group-c-france-national-football-team-football-player-football-tshirt-hand.png",
                      fit: BoxFit.cover,
                      height: 80,
                      width: 80,
                    ),
                  ),
                  const Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.red,
                          thickness: 5,
                          indent: 2.5,
                          endIndent: 2.5,
                        ),
                      ),
                      Text('Line', style: TextStyle(decoration: TextDecoration.lineThrough, decorationColor: Colors.red),),
                      Expanded(
                        child: Divider(
                          color: Colors.red,
                          thickness: 5,
                          indent: 2.5,
                          endIndent: 2.5,
                        ),
                      ),
                    ],
                  )
                ],
              );
            }),
      ),
    );
  }
}
