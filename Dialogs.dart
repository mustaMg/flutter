import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final snackBar = SnackBar(
    content: Text('Saved successfully!'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        actions: [
                          TextButton(onPressed: () {
                            Navigator.pop(context);
                          },
                              child: Text('NO')),
                          TextButton(onPressed: () {
                            Navigator.pop(context);
                          },
                              child: Text('YES'))
                        ],
                        title: Text('Are you sure you want to delete?'),
                        content: Text("Deleted file can't br returned back"),
                      );
                    },
                  );
                },
                child: Text('Save'))
          ],
        ),
      ),
    );
  }
}

