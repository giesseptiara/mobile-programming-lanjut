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
      home: const ManagedWidget(),
    );
  }
}

class ManagedWidget extends StatefulWidget {
  const ManagedWidget({super.key});

  @override
  _ManagedWidgetState createState() => _ManagedWidgetState();
}

class _ManagedWidgetState extends State<ManagedWidget> {
  bool _isVisible = true;

  void _toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Manage Widget')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isVisible)
              Container(
                width: 150,
                height: 150,
                color: Colors.green,
                child: const Center(child: Text('Visible Widget')),
              ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleVisibility,
              child: const Text('Toggle Visibility'),
            ),
          ],
        ),
      ),
    );
  }
}
