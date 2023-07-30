// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinitegleam/home/widgets/food_page_body/widget/feedback_row.dart';
import 'package:infinitegleam/home/widgets/food_delivery_info_row.dart';
import 'package:infinitegleam/utils/colors.dart';
import 'package:infinitegleam/widgets/big_text.dart';

class FoodItemInfoBar extends StatelessWidget {
  /// A widget to display information about the cuisine in text and format and delivery details
  const FoodItemInfoBar({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 150.h,
        margin: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
          bottom: 15.h,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.h),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: AppColors.shadowColor,
                  blurRadius: 5.h,
                  // higher the blur radius more the color of the shadow that we asked for will be visible
                  offset: Offset(0, 5.sp)),
              BoxShadow(
                color: AppColors.backgroundColor,
                offset: Offset(-5.sp, 0),
              ),
              BoxShadow(
                color: AppColors.backgroundColor,
                offset: Offset(5.sp, 0),
              )
            ]
            // we are using multiple shadows to first make a shadow below the box and then remove whatever parts of ite are there on the right and left using background color
            ),
        child: Container(
          padding: EdgeInsets.only(
            top: 15.h,
            left: 15.w,
            right: 15.w,
            bottom: 10.h,
          ),
          // ignore: prefer_const_constructors
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BigText('Chinese Side'),
              const Spacer(
                flex: 1,
              ),
              const FeedbackRow(),
              const Spacer(flex: 5),
              const FoodDeliveryInfoRow(),
            ],
          ),
        ),
      ),
    );
  }
}
