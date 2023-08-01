// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:infinitegleam/home/widgets/food_page_body/widget/feedback_row.dart';
import 'package:infinitegleam/home/widgets/food_delivery_info_row.dart';
import 'package:infinitegleam/utils/colors.dart';
import 'package:infinitegleam/utils/dimension.dart';
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
        height: Dimensions.responsiveHeight(120),
        margin: EdgeInsets.only(
          left: Dimensions.responsiveWidth(25),
          right: Dimensions.responsiveWidth(25),
          bottom: Dimensions.responsiveHeight(15),
        ),
        decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(Dimensions.responsiveHeight(20)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: AppColors.shadowColor,
                  blurRadius: Dimensions.responsiveHeight(5),
                  // higher the blur radius more the color of the shadow that we asked for will be visible
                  offset: const Offset(0, 5)),
              const BoxShadow(
                color: AppColors.backgroundColor,
                offset: Offset(-5, 0),
              ),
              const BoxShadow(
                color: AppColors.backgroundColor,
                offset: Offset(5, 0),
              )
            ]
            // we are using multiple shadows to first make a shadow below the box and then remove whatever parts of ite are there on the right and left using background color
            ),
        child: Container(
          padding: EdgeInsets.only(
            top: Dimensions.responsiveHeight(15),
            left: Dimensions.responsiveWidth(15),
            right: Dimensions.responsiveWidth(15),
            bottom: Dimensions.responsiveHeight(10),
          ),
          // ignore: prefer_const_constructors
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BigText('Chinese Side'),
              // const Spacer(
              //   flex: 1,
              // ),
              const FeedbackRow(),
              const Expanded(child: FoodDeliveryInfoRow()),
              // const Spacer(
              //   flex: 1,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
