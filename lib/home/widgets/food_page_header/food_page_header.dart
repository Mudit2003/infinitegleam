import 'package:flutter/material.dart';
import 'package:infinitegleam/home/widgets/food_page_header/widgets/header_widgets.dart';
import 'package:infinitegleam/utils/dimension.dart';

class FoodPageHeader extends StatelessWidget {
  const FoodPageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.only(
          // left: 20.w,
          // right: 20.w,
          left: Dimensions.responsiveWidth(20),
          right: Dimensions.responsiveWidth(20),
        ),
        margin: EdgeInsets.only(
          top: Dimensions.responsiveHeight(40),
          bottom: Dimensions.responsiveHeight(15),
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
