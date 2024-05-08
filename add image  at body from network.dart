import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.cyan),
      darkTheme: ThemeData(primarySwatch: Colors.amber),
      color: Colors.blue,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  MySnackbar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  showMySnackbar(BuildContext context, String message) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          " Inventory App ",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Image.network(
            "https://png.pngtree.com/png-clipart/20201016/ourmid/pngtree-rustic-flower-graphic-png-image_2368863.jpg"),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        backgroundColor: Colors.amber,
        onPressed: () {
          showMySnackbar(context, "This is add icon");
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),
          //BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        ],
        onTap: (int index) {
          if (index == 0) {
            showMySnackbar(context, "I am home Bottom menu");
          }
          if (index == 1) {
            showMySnackbar(context, "I am contact Bottom menu");
          }
          if (index == 2) {
            showMySnackbar(context, "I am profile Bottom menu");
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.greenAccent),
                accountName: Text(
                  "Md. Mahfuzar Rahman",
                  style: TextStyle(color: Colors.white),
                ),
                accountEmail: Text("mahfuzar148@gmail.com"),
                /**
                currentAccountPicture: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStuka_kUczb0t2cMycRks-GYR7T2C2PxZa5DM2XdLQ0g&s"),
                 */

                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.person),
                ),
                onDetailsPressed: () {
                  MySnackbar("This is my profile", context);
                },
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                MySnackbar("I am Home", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text("Contact"),
              onTap: () {
                MySnackbar("I am Contact", context);
              },
            ),
            ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
                onTap: () {
                  MySnackbar("I am Profile", context);
                }),
            ListTile(
                leading: Icon(Icons.email),
                title: Text("Email"),
                onTap: () {
                  MySnackbar("I am Email", context);
                }),
            ListTile(
                leading: Icon(Icons.search),
                title: Text("Search"),
                onTap: () {
                  MySnackbar("I am Search", context);
                }),
            ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: () {
                  MySnackbar("I am Settings", context);
                }),
            ListTile(
                title: Text("About"),
                onTap: () {
                  MySnackbar("I am About", context);
                }),
            const Divider(),
            ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text("Exit"),
                onTap: () {
                  MySnackbar("I am Exit", context);
                  exit(0);
                }),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.greenAccent),
                accountName: Text(
                  "Md. Mahfuzar Rahman",
                  style: TextStyle(color: Colors.white),
                ),
                accountEmail: Text("mahfuzar148@gmail.com"),
                currentAccountPicture: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStuka_kUczb0t2cMycRks-GYR7T2C2PxZa5DM2XdLQ0g&s"),

                /** currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.person),
                ),
                */
                onDetailsPressed: () {
                  MySnackbar("This is my profile", context);
                },
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                MySnackbar("I am Home", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text("Contact"),
              onTap: () {
                MySnackbar("I am Contact", context);
              },
            ),
            ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
                onTap: () {
                  MySnackbar("I am Profile", context);
                }),
            ListTile(
                leading: Icon(Icons.email),
                title: Text("Email"),
                onTap: () {
                  MySnackbar("I am Email", context);
                }),
            ListTile(
                leading: Icon(Icons.search),
                title: Text("Search"),
                onTap: () {
                  MySnackbar("I am Search", context);
                }),
            ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: () {
                  MySnackbar("I am Settings", context);
                }),
            ListTile(
                title: Text("About"),
                onTap: () {
                  MySnackbar("I am About", context);
                }),
            const Divider(),
            ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text("Exit"),
                onTap: () {
                  MySnackbar("I am Exit", context);
                  exit(0);
                }),
          ],
        ),
      ),
    );
  }
}
