import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp( const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home : Scaffold(
         body : HomePage(),
     ),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'My Home Page'

        ),
      ),
      body:Center(
        child: Container(
          color: Colors.blue,
          height: 150,
          width: 150,
          child: Text('Hello world',
          style:TextStyle(color: Colors.white,)
          ),
        ),
      )

    );
  }
}
