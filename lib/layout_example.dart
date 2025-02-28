import 'package:flutter/material.dart';

class LayoutExample extends StatelessWidget {
  const LayoutExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Layout Example')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Menengahkan elemen secara vertikal
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(Icons.star, size: 50, color: Colors.blue),
              Icon(Icons.favorite, size: 50, color: Colors.red),
              Icon(Icons.thumb_up, size: 50, color: Colors.green),
            ],
          ),
          const SizedBox(height: 20), // Menambahkan sedikit jarak
          const Expanded(
            child: Center(
              child: Text(
                'Welcome to Layout!',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
