import 'package:fist_app/dice_roller.dart';
import 'package:fist_app/styled_text.dart';
import 'package:flutter/material.dart';

var startAlignment = Alignment.topCenter;
var endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  // New constructor
  const GradientContainer.purple({super.key})
      : color1 = Colors.pink,
        color2 = Colors.purple;

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color1, color2],
              begin: startAlignment,
              end: endAlignment),
        ),
        child: const Center(child: DiceRoller()));
  }
}


// class GradientContainer extends StatelessWidget {
//   const GradientContainer(this.colors, {super.key});
//   final List<Color> colors;
//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//             colors: colors, begin: startAlignment, end: endAlignment),
//       ),
//       child: const Center(child: StyledText("weedlee")),
//     );
//   }
// }
