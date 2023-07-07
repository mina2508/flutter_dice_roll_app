import 'package:dice_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      //body: GradientContainer.purpule()-->using another constructor,
      body: GradientContainer(
        color1: const Color.fromARGB(255, 8, 7, 56),
        color2: const Color.fromARGB(255, 95, 135, 237),
      ),
    ),
  ));
}
