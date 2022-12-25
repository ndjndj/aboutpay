import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CommonRegistration extends ConsumerWidget {

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Container(
      child: Column(
        children: [
          const Text('Registration'),
          Container(
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFFAFAFA)
              ),
            ),
          )
        ],
      ),
    );
  }
}
