import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    const ProviderScope(
      child: AboutExIn(),
    )
  );
}

class AboutExIn extends StatelessWidget {
  const AboutExIn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AboutExIn',
      theme: ThemeData(
        textTheme: GoogleFonts.kiwiMaruTextTheme(
          Theme.of(context).textTheme
        ),
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
