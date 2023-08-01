import 'package:flutter/material.dart';
import 'package:infinitegleam/utils/colors.dart';
import 'package:infinitegleam/utils/dimension.dart';

class FoodItemImageView extends StatelessWidget {
  /// widget to display the image of the cuisine
  const FoodItemImageView({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.responsiveHeight(220),
      margin: EdgeInsets.only(
        left: Dimensions.responsiveWidth(10),
        right: Dimensions.responsiveWidth(10),
      ), // this margin creates empty space between the page view
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.responsiveHeight(20)),
          color: index.isEven ? AppColors.mainColor : const Color(0xFF9294cc),
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/image/food0.png'),
          )),
    );
  }
}
