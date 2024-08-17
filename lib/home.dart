import 'package:flutter/material.dart';
//import 'package:theme_data/bottom_bar.dart';
//import 'package:theme_data/drawer.dart';

class HomeData extends StatelessWidget {
  const HomeData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          'Chats',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {
                showDialog(context: context, builder: (context){
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AlertDialog(
                          backgroundColor: Colors.blueGrey,
                          title: const Text('Are you sure?', style: TextStyle(color: Colors.white),),
                          actions: [
                            TextButton(onPressed: (){}, child: const Text('Okay', style: TextStyle(color: Colors.white),)),
                            TextButton(onPressed: (){Navigator.pop(context);}, child: const Text('Cancel', style: TextStyle(color: Colors.white),)),
                          ],
                        ),
                      ],
                    ),
                  );
                });
              },
              icon: const Icon(
                Icons.edit,
                color: Colors.white,
              ))
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.blueGrey,
        child: ListTile(
          minVerticalPadding: 30,
          title: const Text(
            'Profile',
            style: TextStyle(color: Colors.white),
          ),
          leading: const CircleAvatar(
            backgroundColor: Colors.black26,
            radius: 15,
            child: Center(
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ),
          trailing: CircleAvatar(
            backgroundColor: Colors.black26,
            radius: 15,
            child: Center(
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_right_alt),
                //iconSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: Design(),
      bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.chat), label: 'Chats', backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(Icons.people_outlined), label: 'People'),
            BottomNavigationBarItem(
                icon: Icon(Icons.auto_stories_outlined), label: 'Stories', tooltip: 'Stories'),
          ]),
    );
  }
}

class Design extends StatelessWidget {
  const Design({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('this is body...')
            ],
          ),
        ),
      ),
    );
  }
}

