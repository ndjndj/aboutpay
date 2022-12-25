import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:aboutpay/internal/exin_text_field.dart';

class CommonRegistration extends ConsumerWidget {

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
      decoration: BoxDecoration(
        color: const Color(0xFF333333).withOpacity(0.4),
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(left: 12.0, bottom: 12.0),
            child: const Text(
              'Registration',
              style: TextStyle(
                fontSize: 24,
                color: Color(0xFFFAFAFA)
              ),
              textAlign: TextAlign.left,
            ),
          ),

          const ExInTextField(
            hintText: 'hintText',
            margin: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 4.0),
          ),
          const ExInTextField(
            hintText: 'hintText',
            margin: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 4.0),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFACEB80),
              foregroundColor: Color(0xFF333333),
              elevation: 4,
              shape: const StadiumBorder()
            ),
            child: const Text('register'),
          ),
          Expanded(

            child: SingleChildScrollView(
            child: Wrap(
                  children: List.generate(
                    100,
                    (int index) {
                      return InputChip(
                        label: Text('${index}labelel'),
                        onPressed: () {

                        },
                      );
                    }
                  ),
                ),

          ),
          )





        ],
      ),
    );
  }
}
