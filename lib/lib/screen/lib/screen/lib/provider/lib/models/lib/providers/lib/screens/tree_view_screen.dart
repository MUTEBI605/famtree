import 'package:flutter/material.dart';
import '../models/tree.dart';

class TreeViewScreen extends StatelessWidget {
  final FamilyTree tree;
  const TreeViewScreen({super.key, required this.tree});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(tree.name)),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.account_tree, size: 120, color: Color(0xFF6B4E9E)),
            SizedBox(height: 24),
            Text(
              "Interactive Family Tree",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text(
              "Full graph view coming in next update\n\nYou can now create & open trees!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Add Member feature coming soon 🌳")),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
