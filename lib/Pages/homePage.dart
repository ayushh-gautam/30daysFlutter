import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String name = 'Aayush';
    final double days = 20;
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body: Center(
        child: Text("Here we learn flutter in $days by $name"),
      ),
      drawer: Drawer(),
    );
  }
}
