import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('App - Gies Rubby')),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.pink[100], // Warna latar belakang pink soft
            padding: const EdgeInsets.all(16.0), // Biar ada jarak dari pinggir layar
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Teks dengan efek bayangan
                const Text(
                  'Welcome to Rubby App',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    shadows: [
                      Shadow(
                        blurRadius: 4.0,
                        color: Colors.black45,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Lima ikon dalam satu baris
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.star, size: 40, color: Colors.amber),
                    SizedBox(width: 10),
                    Icon(Icons.favorite, size: 40, color: Colors.red),
                    SizedBox(width: 10),
                    Icon(Icons.thumb_up, size: 40, color: Colors.blue),
                    SizedBox(width: 10),
                    Icon(Icons.lightbulb, size: 40, color: Colors.yellow),
                    SizedBox(width: 10),
                    Icon(Icons.music_note, size: 40, color: Colors.purple),
                  ],
                ),
                const SizedBox(height: 20),

                // Gambar dengan Flexible agar lebih proporsional
                ClipRRect(
                  borderRadius: BorderRadius.circular(16), // Biar ada efek rounded
                  child: Image.asset('assets/ruby.png', width: 200),
                ),
                const SizedBox(height: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset('assets/ruby1.png', width: 200),
                ),
                const SizedBox(height: 20),

                // TextField + Tombol untuk Menampilkan Teks Input
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      TextField(
                        controller: _controller,
                        decoration: const InputDecoration(
                          labelText: 'Enter your name',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _displayText = _controller.text;
                          });
                        },
                        child: const Text('Tampilkan Teks'),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        _displayText,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Controller dan State untuk input teks
final TextEditingController _controller = TextEditingController();
String _displayText = '';

void setState(VoidCallback fn) {
  fn();
}
