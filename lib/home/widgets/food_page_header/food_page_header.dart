import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinitegleam/home/widgets/food_page_header/widgets/header_widgets.dart';

class FoodPageHeader extends StatelessWidget {
  const FoodPageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
        ),
        margin: EdgeInsets.only(
          top: 40.h,
          bottom: 15.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FoodPageLocationAndOption(),
            const FoodPageSearchIcon(),
          ],
        ),
      ),
    );
  }
}
