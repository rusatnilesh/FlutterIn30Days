import 'package:flutter/material.dart';
import 'package:orecs/models/catalog.dart';

import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  final dummyList = List.generate(50, (index) => CatalogModel.items[0]);
  final int days = 30;

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("MyApp")),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: dummyList.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: dummyList[index],
          );
        },
      ),
      drawer: const MyDrawer(),
    );
  }
}
