import 'package:flutter/material.dart';
import 'package:stateless_example/rebuild.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.blue),
      home: const MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Widgets"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Stateless Widget', style: TextStyle(fontSize: 25)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: const Text("Elevated Button"),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {},
              //style: OutlinedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text("Outlined Button"),
            ),
            const SizedBox(height: 20),
            FilledButton(
              onPressed: () {},
              style: FilledButton.styleFrom(backgroundColor: Colors.red),
              child: const Text("Filled Button"),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite, size: 50),
              tooltip: 'IconButton',
              color: Colors.red,
            ),
            const SizedBox(height: 20),
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.green,
              child: const Icon(Icons.navigation),
            ),
          ],
        ),
      ),
    );
  }
}
