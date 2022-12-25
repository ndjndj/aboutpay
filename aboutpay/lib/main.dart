import 'package:flutter/material.dart';

void main() {
  runApp(
    const AboutExIn()
  );
}

class AboutExIn extends StatelessWidget {
  const AboutExIn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AboutExIn',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _Main();
}

class _Main extends State<Main> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AboutExIn'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
    );
  }
}
