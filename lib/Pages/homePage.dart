import 'package:catalog_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
     const String name = 'Aayush';
    const double days = 20;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Catalog App',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: const Center(
        child: Text("Here we learn flutter in $days by $name"),
      ),
      drawer: const MyDrawer(),
    );
  }
}
