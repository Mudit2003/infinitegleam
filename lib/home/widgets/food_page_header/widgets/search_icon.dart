import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinitegleam/utils/colors.dart';

class FoodPageSearchIcon extends StatelessWidget {
  const FoodPageSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 45.h,
        width: 45.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.h),
          color: AppColors.mainColor,
        ),
        child: const Icon(
          Icons.search,
          color: Colors.white,
        ),
      ),
    );
  }
}
