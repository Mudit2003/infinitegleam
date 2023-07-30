import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinitegleam/utils/colors.dart';

class SmallText extends StatelessWidget {
  const SmallText(
    this.text, {
    super.key,
    this.color = AppColors.textColor,
    this.size = 12,
    this.height = 1.2,
  });
  final Color color;
  final String text;
  final double size;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        fontSize: size.sp,
      ),
    );
  }
}
