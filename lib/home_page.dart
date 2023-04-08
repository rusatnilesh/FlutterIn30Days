import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final double days = 52;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MyApp")),
      body: Center(
        child: Container(
          child: Text("$days"),
        ),
      ),
    );
  }
}
