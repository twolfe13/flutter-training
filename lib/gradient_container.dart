import 'package:flutter/material.dart';
import 'package:second_app/dice_roller.dart';
// import 'package:second_app/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// grabs colors which were hardcoded on main.dart
class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

// Another way to make constructor
  // const GradientContainer(this.color1, this.color2, {super.key})
  //    : color1 = Colors.deepOrange,
  //      color2 = Colors.indigo;

  @override // extra
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          // aligns gradient container across the entire screen
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        // by default, Column() takes entire vertical space (by default it won't be centered vertically)
        child: DiceRoller(),
        // child: StyledText('Hello World!')
      ),
    );
  }
}
