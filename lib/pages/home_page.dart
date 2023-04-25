// ignore_for_file: import_of_legacy_library_into_null_safe

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:orecs/models/catalog.dart';
import 'package:orecs/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';
import '../widgets/home_widgets/catalog_header.dart';
import '../widgets/home_widgets/catalog_list.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final dummyList = List.generate(50, (index) => CatalogModel.items[0]);

  final int days = 30;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    var catlogJson = await rootBundle.loadString("assets/files/catalog.json");
    // print(catlogJson);
    var decodedata = jsonDecode(catlogJson);
    var productData = decodedata["products"];
    print(productData);
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: Vx.m32,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CatalogHeader(),
            if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
              const CatalogList().py16().expand()
            else
              CircularProgressIndicator().centered().expand(),
          ],
        ),
      ),
    ));
  }
}
