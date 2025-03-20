import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Layout Screen')),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text(
                  'Menu',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ],
          ),
        ),
        body: Center(
          child: Container(
            width: 250,
            height: 100,
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.only(top: 150, left: 30, right: 30, bottom: 20), // Perbesar margin atas
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: const Align(
              alignment: Alignment.center,
              child: Text(
                'Box Model',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
