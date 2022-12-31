// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../models/items.dart';

class CatalogList extends StatelessWidget {
  final Item item;

  const CatalogList({
    Key? key,
    required this.item,
  })  : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListTile(
          onTap: () {
            print(item.name);
          },
          leading: Image.network(item.image),
          title: Text(item.name),
          subtitle: Text(item.description),
          trailing: Text("\$${item.price}",
              textScaleFactor: 1.3,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              )),
        ),
      ),
    );
  }
}
