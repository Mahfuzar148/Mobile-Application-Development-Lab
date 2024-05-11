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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  MySnackBar(BuildContext context, String message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  MyAlertDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
            title: const Text("Alert!"),
            content: const Text("Are you want to delete ??"),
            actions: [
              TextButton(
                child: const Text("YES"),
                onPressed: () {
                  MySnackBar(context, "Delete success");
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: const Text("NO"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      padding: EdgeInsets.all(25),
      backgroundColor: Colors.blueAccent,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Demo Home Page',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            fontFamily: 'Poppins',
            letterSpacing: 1.0,
            wordSpacing: 1.0,
            textBaseline: TextBaseline.alphabetic,
            height: 1.0,
            decoration: TextDecoration.none,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            onPressed: () {
              MyAlertDialog(context);
            },
            child: const Text("DELETE"),
            style: buttonStyle,
          ),
        ),
      ),
    );
  }
}
