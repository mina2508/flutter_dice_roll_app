import 'package:dice_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // const GradientContainer({key}) : super(key: key);
  Color color1;
  Color color2;

  GradientContainer({
    super.key,
    required this.color1,
    required this.color2,
  });
  //multiple constructors with names as Identifier
  GradientContainer.purpule({super.key})
      : color1 = Colors.purple,
        color2 = Colors.deepPurple;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [color1, color2],
        begin: startAlignment,
        end: endAlignment,
      )),
      child: const Center(child: DiceRoller()),
    );
  }
}
