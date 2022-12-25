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
        textTheme: GoogleFonts.zenMaruGothicTextTheme(
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
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF0089A7),
            Color(0xFF00A5B0),
            Color(0xFF00C0A9),
            Color(0xFF63D797),
            Color(0xFFACEB80),
            Color(0xFFF9F871),
          ],
          stops: [0.17, 0.34, 0.51, 0.68, 0.85, 1.0],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
        )
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text('AboutExIn'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                '日本語今日も絶対直らない pushed the button this many times:',
              ),
            ],
          ),
        ),
      )
    );
  }
}
