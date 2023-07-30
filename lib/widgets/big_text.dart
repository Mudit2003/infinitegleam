import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinitegleam/utils/colors.dart';

class BigText extends StatelessWidget {
  const BigText(
    this.text, {
    super.key,
    this.color = AppColors.mainBlackColor,
    this.size = 20,
    this.overflow = TextOverflow.ellipsis,
  });
  final Color? color;
  final String text;
  final double size;
  final TextOverflow overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      style: TextStyle(
        color: color,
        fontFamily: 'Roboto',
        fontSize: size.sp,
        overflow: overflow,
      ),
    );
  }
}
