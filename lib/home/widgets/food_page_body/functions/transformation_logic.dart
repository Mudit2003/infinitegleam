import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Matrix4 scaleAndPositionTransform(
    {required int index,
    required double currPageValue,
    double height = 250,
    double scaleFactor = 0.8}) {
  height = height.h;
  Matrix4 matrix = Matrix4.identity();
  if (index == currPageValue.floor()) {
    double currScale = 1 - (currPageValue - index) * (1 - scaleFactor);
    double currTransformation = height * (1 - currScale) / 2;
    matrix = Matrix4.diagonal3Values(1, currScale, 1)
      ..setTranslationRaw(0, currTransformation, 0); // moves up and down
  } else if (index == currPageValue.floor() + 1) {
    double currScale =
        scaleFactor + (currPageValue - index + 1) * (1 - scaleFactor);
    double currTransformation = height * (1 - currScale) / 2;

    // matrix = Matrix4.diagonal3Values(1, currScale, 1);
    matrix = Matrix4.diagonal3Values(1, currScale, 1)
      ..setTranslationRaw(0, currTransformation, 0);
  } else if (index == currPageValue.floor() - 1) {
    double currScale = 1 - (currPageValue - index) * (1 - scaleFactor);

    double currTransformation = height * (1 - currScale) / 2;

    // matrix = Matrix4.diagonal3Values(1, currScale, 1);
    matrix = Matrix4.diagonal3Values(1, currScale, 1)
      ..setTranslationRaw(0, currTransformation, 0);
  } else {
    var currScale = 0.8;
    var currTransformation = height * (1 - scaleFactor) / 2;
    matrix = Matrix4.diagonal3Values(1, currScale, 1)
      ..setTranslationRaw(0, currTransformation, 0);
  }
  return matrix;
}
