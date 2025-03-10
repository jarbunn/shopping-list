import 'package:flutter/material.dart';
import 'package:shopping_list/data/dummy_items.dart';
import 'package:shopping_list/data/dummy_items.dart';

class GroceryList extends StatelessWidget {
  const GroceryList({super.key});

  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your Groceries')),
      body: ListView.builder(
        itemCount: groceryItems.length,
        itemBuilder:
            (ctx, index) => ListTile(
              title: Text(groceryItems[index].name),
              leading: Container(
                width: 24,
                height: 24,
                color: groceryItems[index].category.color,
              ),
              trailing: Text(groceryItems[index].quantity.toString()),
            ),
      ),
    );
  }
}
