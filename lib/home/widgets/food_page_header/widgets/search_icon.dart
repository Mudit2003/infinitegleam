import 'package:flutter/material.dart';
import 'package:infinitegleam/utils/colors.dart';
import 'package:infinitegleam/utils/dimension.dart';

class FoodPageSearchIcon extends StatelessWidget {
  const FoodPageSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: Dimensions.responsiveHeight(45),
        width: Dimensions.responsiveWidth(45),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.responsiveHeight(15)),
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
