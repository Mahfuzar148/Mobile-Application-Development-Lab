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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inventory App"),
        backgroundColor: Colors.blue,
        centerTitle: true,
        elevation: 100,
        toolbarHeight: 50,
        toolbarOpacity: 1,
        //Action button set
        actions: [
          IconButton(
            onPressed: () {
              MySnackbar("I am add_call", context);
            },
            icon: Icon(Icons.add_call),
          ),
          IconButton(
              onPressed: () {
                MySnackbar("I am Search", context);
              },
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                MySnackbar("I am setting", context);
              },
              icon: Icon(Icons.settings)),
          IconButton(
              onPressed: () {
                MySnackbar("I am person", context);
              },
              icon: Icon(Icons.person)),
          IconButton(
              onPressed: () {
                MySnackbar("I am mail", context);
              },
              icon: Icon(Icons.mail))
        ],
      ),
      body: Text(
        "Hello World!"
        " \nI am Mahfuzar Rahman"
        " \nI am 21 years old",
        style: TextStyle(
          color: Colors.white,
          backgroundColor: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
