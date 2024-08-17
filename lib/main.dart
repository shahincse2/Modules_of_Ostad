import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Floating Action',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent[100],
        actions: [
          IconButton(
              onPressed: () {
                MySnackBar('Add a photo', context);
              },
              icon: const Icon(
                Icons.add_a_photo,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {
                MySnackBar('Add a comment', context);
              },
              icon: const Icon(
                Icons.comment_sharp,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {
                MySnackBar('See notifications', context);
              },
              icon: const Icon(
                Icons.notifications_active,
                color: Colors.white,
              )),
        ],
      ),
      body: const Body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          MySnackBar('You Clicked on Float Button', context);
        },
        elevation: 15,
        child: const Icon(
          Icons.add,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: 0,
        selectedItemColor: Colors.deepOrangeAccent,
        unselectedItemColor: Colors.black26,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(
            color: Colors.black26, fontSize: 15, fontWeight: FontWeight.bold),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_sharp), label: 'Transactions'),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_outlined), label: 'People'),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_open_sharp), label: 'My Nagad'),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: const EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: const BoxDecoration(color: Colors.deepOrangeAccent),
                accountName: const Text('Md. Shahin Alam'),
                accountEmail: const Text('01742833791'),
                currentAccountPicture: Image.asset("assets/images/man.png"),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.sort_by_alpha,
                color: Colors.deepOrangeAccent,
              ),
              title: const Text(
                'Language',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                MySnackBar('Select your language', context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person_search,
                color: Colors.deepOrangeAccent,
              ),
              title: Text(
                'Account Type',
                style: TextStyle(fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.auto_graph_rounded,
                color: Colors.deepOrangeAccent,
              ),
              title: Text(
                'I want Profit',
                style: TextStyle(fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.lock,
                color: Colors.deepOrangeAccent,
              ),
              title: Text(
                'Change PIN',
                style: TextStyle(fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.cell_tower,
                color: Colors.deepOrangeAccent,
              ),
              title: Text(
                'Change Mobile Operator',
                style: TextStyle(fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.event_note,
                color: Colors.deepOrangeAccent,
              ),
              title: Text(
                'Re-submit KYC',
                style: TextStyle(fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.security,
                color: Colors.deepOrangeAccent,
              ),
              title: Text(
                'Trusted Merchants',
                style: TextStyle(fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.privacy_tip,
                color: Colors.deepOrangeAccent,
              ),
              title: Text(
                'Privacy Policy',
                style: TextStyle(fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.question_mark,
                color: Colors.deepOrangeAccent,
              ),
              title: Text(
                'FAQ',
                style: TextStyle(fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.place_outlined,
                color: Colors.deepOrangeAccent,
              ),
              title: Text(
                'Store Locator',
                style: TextStyle(fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.merge,
                color: Colors.deepOrangeAccent,
              ),
              title: Text(
                'About',
                style: TextStyle(fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.facebook,
                color: Colors.deepOrangeAccent,
              ),
              title: Text(
                'Nagad Page',
                style: TextStyle(fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.browse_gallery_rounded,
                color: Colors.deepOrangeAccent,
              ),
              title: Text(
                'Website',
                style: TextStyle(fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.logout_sharp,
                color: Colors.deepOrangeAccent,
              ),
              title: Text(
                'Sign Out',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          verticalDirection: VerticalDirection.down,
          children: [
            ElevatedButton(
                autofocus: true,
                onPressed: () {
                  print("Clicked me");
                },
                child: const Text(
                  'Click Me',
                )),
            ElevatedButton(
                autofocus: true,
                onPressed: () {
                  print("Clicked me");
                },
                child: const Text(
                  'Click Me',
                )),
            ElevatedButton(
                autofocus: true,
                onPressed: () {
                  print("Clicked me");
                },
                child: const Text(
                  'Click Me',
                )),
            TextButton(onPressed: () {}, child: Text('data')),
            TextButton(onPressed: () {}, child: Text('Button')),
            TextButton(onPressed: () {}, child: Text('Click Me')),
            TextButton(onPressed: () {}, child: Text('Log Out')),
            ElevatedButton(
                autofocus: true,
                onPressed: () {
                  print("Clicked me");
                },
                child: const Text(
                  'Click Me',
                )),
            ElevatedButton(
                autofocus: true,
                onPressed: () {
                  print("Clicked me");
                },
                child: const Text(
                  'Click Me',
                )),
            ElevatedButton(
                autofocus: true,
                onPressed: () {
                  print("Clicked me");
                },
                child: const Text(
                  'Click Me',
                )),
            ElevatedButton(
                autofocus: true,
                onPressed: () {
                  print("Clicked me");
                },
                child: const Text(
                  'Click Me',
                )),
            ElevatedButton(
                autofocus: true,
                onPressed: () {
                  print("Clicked me");
                },
                child: const Text(
                  'Click Me',
                )),
            ElevatedButton(
                autofocus: true,
                onPressed: () {
                  print("Clicked me");
                },
                child: const Text(
                  'Click Me',
                )),
            ElevatedButton(
                autofocus: true,
                onPressed: () {
                  print("Clicked me");
                },
                child: const Text(
                  'Click Me',
                )),
            ElevatedButton(
                autofocus: true,
                onPressed: () {
                  print("Clicked me");
                },
                child: const Text(
                  'Click Me',
                )),
            ElevatedButton(
                autofocus: true,
                onPressed: () {
                  print("Clicked me");
                },
                child: const Text(
                  'Click Me',
                )),
            ElevatedButton(
                autofocus: true,
                onPressed: () {
                  print("Clicked me");
                },
                child: const Text(
                  'Click Me',
                )),
            ElevatedButton(
                autofocus: true,
                onPressed: () {
                  print("Clicked me");
                },
                child: const Text(
                  'Click Me',
                )),
            ElevatedButton(
                autofocus: true,
                onPressed: () {
                  print("Clicked me");
                },
                child: const Text(
                  'Click Me',
                )),
            ElevatedButton(
                autofocus: true,
                onPressed: () {
                  print("Clicked me");
                },
                child: const Text(
                  'Click Me',
                )),
            ElevatedButton(
                autofocus: true,
                onPressed: () {
                  print("Clicked me on button");
                },
                child: const Text(
                  'Click Me',
                )),
            ElevatedButton(
                autofocus: true,
                onPressed: () {
                  print("Clicked me");
                },
                child: const Text(
                  'Click Me on the button',
                )),
          ],
        ),
      ),
    );
  }
}

// class BottomNavigation extends StatelessWidget {
//   const BottomNavigation({super.key});
//
//   MySnackBar(message, context) {
//     return ScaffoldMessenger.of(context)
//         .showSnackBar(SnackBar(content: Text(message)));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//           items: [
//             BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
//             BottomNavigationBarItem(icon: Icon(Icons.people_alt_sharp), label: 'People'),
//             BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Stories'),
//           ],
//       ),
//     );
//   }
// }
