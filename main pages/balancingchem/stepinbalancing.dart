// ignore_for_file: unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore, sort_child_properties_last, avoid_unnecessary_containers, prefer_final_fields, sized_box_for_whitespace

import 'package:chlic/main%20pages/balancingchem/stepsbalancing/stepsinwriting/steponewriting.dart';
import 'package:chlic/main%20pages/balancingchem/stepsbalancing/stepsinwriting/stepthreewriting.dart';
import 'package:chlic/main%20pages/balancingchem/stepsbalancing/stepsinwriting/steptwowriting.dart';
import 'package:chlic/main%20pages/pages/intro.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../pages/page_two.dart';
import '../pages/third_dot.dart';

class StepsinBAL extends StatefulWidget {
  const StepsinBAL({super.key});

  @override
  State<StepsinBAL> createState() => _StepsinBALState();
}

class _StepsinBALState extends State<StepsinBAL> {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Container(
      height: 500,
      width: 300,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),

      // ignore: prefer_const_constructors
      child: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              Steponewriting(),
              Steptwowriting(),
              Stepthreewriting(),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment(0, 1.3),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: JumpingDotEffect(
                activeDotColor: Color.fromARGB(255, 15, 67, 29),
                dotColor: Color.fromARGB(255, 207, 227, 215),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
