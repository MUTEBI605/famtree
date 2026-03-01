import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'auth_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Family Trees"),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              if (context.mounted) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => const AuthScreen()),
                );
              }
            },
          ),
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.family_restroom, size: 120, color: Color(0xFF6B4E9E)),
            SizedBox(height: 24),
            Text(
              "Welcome to FAMTREE",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text(
              "Your living family tree is ready!\n\nFull interactive tree coming soon",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("New Tree feature coming in next update 🌳")),
          );
        },
        label: const Text("New Tree"),
        icon: const Icon(Icons.add),
      ),
    );
  }
}
