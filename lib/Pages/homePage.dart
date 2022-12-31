import 'package:catalog_app/models/items.dart';
import 'package:catalog_app/widgets/catalog_list.dart';
import 'package:catalog_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogItem.items[0]);
    const String name = 'Aayush';
    const double days = 20;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Catalog App',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context, index) {
          return CatalogList(
            item: dummyList[index],
          );
        },
      ),
      drawer: const MyDrawer(),
    );
  }
}
