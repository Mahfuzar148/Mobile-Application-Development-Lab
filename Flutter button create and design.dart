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

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        padding: EdgeInsets.all(25),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40.0)),
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
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: TextButton(
                    child: const Text("TextButton"),
                    onPressed: () {
                      MySnackBar(context, "TextButton");
                    },
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    child: const Text("ElevatedButton"),
                    onPressed: () {
                      MySnackBar(context, "ElevatedButton");
                    },
                    style: buttonStyle,
                  ),
                ),
                Container(
                  child: OutlinedButton(
                    child: const Text("OutlinedButton"),
                    onPressed: () {
                      MySnackBar(context, "OutlinedButton");
                    },
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: TextButton(
                    child: const Text("LOG IN"),
                    onPressed: () {
                      MySnackBar(context, "LOG IN");
                    },
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    child: const Text("SIGN UP"),
                    onPressed: () {
                      MySnackBar(context, "SIGN UP");
                    },
                    style: buttonStyle,
                  ),
                ),
                Container(
                  child: OutlinedButton(
                    child: const Text("LOG OUT"),
                    onPressed: () {
                      MySnackBar(context, "LOG OUT");
                    },
                  ),
                )
              ],
            )
          ],
        ),
    );
  }
}
