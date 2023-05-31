// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unnecessary_new, library_private_types_in_public_api

import 'package:chlic/main%20pages/balancingchem/writingbalance.dart';
import 'package:flutter/material.dart';

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 50,
        alignment: Alignment.bottomRight,
        child: ElevatedButton.icon(
          icon: Icon(Icons.skip_next_rounded),
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            backgroundColor: Color.fromARGB(255, 15, 67, 29),
          ),

          // Within the `FirstRoute` widget
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            );
          },
          label: Text('NEXT PAGE'),
        ),
      ),
    );
  }
}
