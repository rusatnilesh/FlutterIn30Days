import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final int days = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("MyApp")),
      body: Center(
        child: Container(
          child: Text("Welcome to $days of flutter"),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
