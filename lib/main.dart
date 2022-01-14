import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orange[200],
        appBar: AppBar(
          title: const Text('Ask Me Anything'),
          backgroundColor: Colors.orange[700],
          actions: [
            IconButton(
              onPressed: () {
                print('This is a notification');
              },
              icon: Icon(Icons.notifications_on_outlined),
            ),
          ],
        ),
        body: MainPage(),
      ),
    ),
  );
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int numChane = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: [
        Expanded(
          child: TextButton(
            onPressed: () {
              setState(() {
                numChane = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset('images/ball$numChane.png'),
          ),
        ),
      ],
    ));
  }
}
