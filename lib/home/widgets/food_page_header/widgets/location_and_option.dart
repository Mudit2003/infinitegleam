import 'package:flutter/material.dart';
import 'package:infinitegleam/utils/colors.dart';
import 'package:infinitegleam/utils/dimension.dart';
import 'package:infinitegleam/widgets/big_text.dart';
import 'package:infinitegleam/widgets/small_text.dart';

class FoodPageLocationAndOption extends StatelessWidget {
  const FoodPageLocationAndOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      BigText(
        'India',
        color: AppColors.mainColor,
        size: Dimensions.responsiveWidth(30),
      ),
      Row(
        children: [
          const SmallText(
            'City',
            color: AppColors.darkerTextColor,
          ),
          const Icon(Icons.arrow_drop_down_rounded),
        ],
      )
    ]);
  }
}
