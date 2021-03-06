import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Animated Navigation Bar",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 1,
        backgroundColor: Colors.deepPurpleAccent,
        items: <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.play_arrow_outlined, size: 30),
          Icon(Icons.thumb_up_alt_outlined, size: 30),
          Icon(Icons.account_circle_outlined, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
            child: Text(
          "Flutter",
          style: TextStyle(color: Colors.white),
        )),
        decoration: BoxDecoration(color: Colors.deepPurpleAccent),
      ),
    );
  }
}
