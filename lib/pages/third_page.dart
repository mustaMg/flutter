import 'package:flutter/material.dart';
import 'package:insta_follower/routes/routes.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Third Page'),
      ),

      body: Center(
        child: ElevatedButton(
          child: const Text('Home'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

    );
  }
}
