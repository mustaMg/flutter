import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
  final snackBar = const SnackBar(
    content: Text('Saved successfully!'),
  );

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Layouts'),
      ),
      body: orientation == Orientation.portrait ? ListData() : GridData(),
    );
  }
}

class ListData extends StatelessWidget {
  const ListData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.person),
          trailing: const Icon(Icons.waves),
          title: Text('Person ${index + 1}'),
        );
      },
    );
  }
}

class GridData extends StatelessWidget {
  const GridData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 4,
      children: List.generate(
        20,
        (index) {
          return ListTile(
            leading: const Icon(Icons.person),
            trailing: const Icon(Icons.waves),
            title: Text('Person ${index + 1}'),
          );
        },
      ),
    );
  }
}

