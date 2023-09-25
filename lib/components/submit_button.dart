import 'package:flutter/material.dart';

import '../constants.dart';

class SubmitButton extends StatelessWidget {
  final Function onSubmit;
  final String buttonLabel;

  const SubmitButton({
    required this.onSubmit,
    required this.buttonLabel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onSubmit();
      },
      child: Container(
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(
          top: 10.0,
        ),
        padding: const EdgeInsets.only(
          bottom: 20.0,
        ),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            buttonLabel,
            style: kLargeButtonText,
          ),
        ),
      ),
    );
  }
}
