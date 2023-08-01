import 'package:flutter/material.dart';

// you can take the same values from getx package using Get.context.height and width
class Dimensions {
  static Size _screenSize = const Size(0.0, 0.0);

  static void init(Size screenSize) {
    _screenSize = screenSize;
  }

  static void update(Size newScreenSize) => _screenSize = newScreenSize;
  // we can use this update method to enclose everything inside a bloc builder or better a responsive builder
  // in the end I will be using responsive widgets like flexbox and all

  static double responsiveHeight(double height) =>
      (_screenSize.height / 844) * height;
  static double responsiveWidth(double width) =>
      (_screenSize.width / 390) * width;
}
// class Dimension {
//   static late Size _screenSize;

//   static double get screenHeight => _screenSize.height;
//   static double get screenWidth => _screenSize.width;

// static void init(Size screenSize) => _screenSize = screenSize;

// static void update(Size newScreenSize) => _screenSize = newScreenSize;
// }
