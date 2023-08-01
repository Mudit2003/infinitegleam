// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:infinitegleam/utils/colors.dart';
import 'package:infinitegleam/utils/dimension.dart';
import 'package:infinitegleam/widgets/icon_and_text_row.dart';

class FoodDeliveryInfoRow extends StatelessWidget {
  const FoodDeliveryInfoRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconAndTextWidget(
          icon: Icons.circle_sharp,
          text: 'Normal',
          iconColor: AppColors.iconColor1,
        ),
        IconAndTextWidget(
          icon: Icons.location_on,
          text: '1.7 km',
          iconColor: AppColors.mainColor,
        ),
        IconAndTextWidget(
          icon: Icons.access_time_rounded,
          text: 'Normal',
          iconColor: AppColors.iconColor2,
        ),
      ],
    );
  }
}
