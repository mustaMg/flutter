import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_follower/dafaults/defaults.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var indexClicked = 0;
  final pages = [
    Center(
      child: Container(child: Icon(Defaults.bottomNavItemIcon[0]),),
    ),
    Center(
      child: Text('Starred'),
    ),
    Center(
      child: Text('Sent'),
    ),
    Center(
      child: Text('Drafts'),
    ),
    Center(
      child: Text('Trash'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App'),
        backgroundColor: Colors.deepPurple,
      ),
      body: pages[indexClicked],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurple,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.purple[400],
        unselectedItemColor: Colors.purple[100],
        currentIndex: indexClicked,
        onTap: (value) {
          setState(() {
            indexClicked = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Defaults.bottomNavItemIcon[0]),
              label: Defaults.bottomNavItemText[0]),
          BottomNavigationBarItem(
            icon: Icon(Defaults.bottomNavItemIcon[1]),
            label: Defaults.bottomNavItemText[1],
          ),
          BottomNavigationBarItem(
            icon: Icon(Defaults.bottomNavItemIcon[2]),
            label: Defaults.bottomNavItemText[2],
          ),
          BottomNavigationBarItem(
            icon: Icon(Defaults.bottomNavItemIcon[3]),
            label: Defaults.bottomNavItemText[3],
          ),
          BottomNavigationBarItem(
            icon: Icon(Defaults.bottomNavItemIcon[4]),
            label: Defaults.bottomNavItemText[4],
          ),
        ],
      ),
    );
  }
}

