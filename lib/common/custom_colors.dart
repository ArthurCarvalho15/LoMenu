import 'package:flutter/material.dart';

class CustomColors {
  Color _activePrimaryBtnColor = Color.fromARGB(255, 204, 105, 0);
  Color _activeSecondaryBtnColor = Color.fromARGB(255, 230, 230, 230);
  Color _gradientMainColor = Color.fromARGB(255, 204, 105, 0);
  Color _gradientSecondColor = Color.fromARGB(255, 241, 207, 146);

  Color getActivePrimaryBtnColor() {
    return _activePrimaryBtnColor;
  }

  Color getActiveSecondaryBtnColor() {
    return _activeSecondaryBtnColor;
  }

  Color getGradientMainColor() {
    return _gradientMainColor;
  }

  Color getGradientSecondColor() {
    return _gradientSecondColor;
  }
}
