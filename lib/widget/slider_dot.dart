import 'package:flutter/material.dart';

class SliderDot extends StatelessWidget {
  const SliderDot({super.key, required this.controlActive});
  final bool controlActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      duration: const Duration(milliseconds: 350),
      height: 5,
      width: controlActive ? 15 : 5,
      decoration: BoxDecoration(
        color: controlActive ? Colors.white54 : Colors.black26,
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
      ),
    );
  }
}
