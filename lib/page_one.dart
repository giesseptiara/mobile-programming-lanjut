import 'package:flutter/material.dart';
import 'page_two.dart'; // Pastikan file page_two.dart ada

class PageOne extends StatelessWidget {
  const PageOne({super.key}); // Tambahkan super.key untuk kompatibilitas

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page One')), // Gunakan const jika memungkinkan
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PageTwo()), // Tambahkan const untuk efisiensi
            );
          },
          child: const Text('Go to Page Two'),
        ),
      ),
    );
  }
}
