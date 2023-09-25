import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;

  const RoundIconButton({required this.icon, required this.onPress, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 7.0,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      hoverColor: Colors.white,
      textStyle: const TextStyle(
        color: Colors.white,
      ),
      onPressed: () {
        onPress();
      },
      child: Icon(icon),
    );
  }
}
