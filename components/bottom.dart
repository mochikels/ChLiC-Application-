// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ionicons/ionicons.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            color: Color.fromARGB(255, 162, 190, 163),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: GNav(
                backgroundColor: Color.fromARGB(255, 162, 190, 163),
                color: Color.fromARGB(255, 15, 67, 29),
                tabBackgroundColor: Colors.green.shade100,
                gap: 8,
                padding: EdgeInsets.all(15),
                // ignore: prefer_const_literals_to_create_immutables
                tabs: [
                  // ignore: prefer_const_constructors
                  GButton(
                    icon: Icons.science_rounded,
                    text: 'Home',
                  ),
                  // ignore: prefer_const_constructors
                  GButton(
                    icon: Icons.dns_rounded,
                    text: 'Lessons',
                  ),
                  // ignore: prefer_const_constructors
                  GButton(
                    icon: Icons.dashboard,
                    text: 'Periodic Table',
                  ),
                  // ignore: prefer_const_constructors
                  GButton(
                    icon: Ionicons.game_controller,
                    text: 'Games',
                  ),
                  // ignore: prefer_const_constructors
                  GButton(
                    icon: Icons.fact_check_rounded,
                    text: 'About',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
