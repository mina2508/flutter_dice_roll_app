import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final double size;
  final String data;
  const StyledText({super.key, required this.size, required this.data});
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: size,
      ),
    );
  }
}
