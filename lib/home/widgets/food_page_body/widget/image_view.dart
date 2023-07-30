import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinitegleam/utils/colors.dart';

class FoodItemImageView extends StatelessWidget {
  /// widget to display the image of the cuisine
  const FoodItemImageView({
    super.key,
    required this.index,
    required this.height,
  });
  final int index;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h,
      margin: EdgeInsets.only(
        left: 10.w,
        right: 10.w,
      ), // this margin creates empty space between the page view
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r),
          color: index.isEven ? AppColors.mainColor : const Color(0xFF9294cc),
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/image/food0.png'),
          )),
    );
  }
}
