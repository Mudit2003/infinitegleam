import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinitegleam/home/widgets/food_page_body/bloc/food_page_body_bloc.dart';
import 'package:infinitegleam/home/widgets/food_page_body/functions/transformation_logic.dart';
import 'package:infinitegleam/home/widgets/food_page_body/widget/image_view.dart';
import 'package:infinitegleam/home/widgets/food_page_body/widget/info_bar.dart';
import 'package:infinitegleam/utils/dimension.dart';

class FoodPageItem extends StatelessWidget {
  FoodPageItem({super.key, required this.index});
  final int index;
  // final double scaleFactor = 0.8;
  final double height = Dimensions.responsiveHeight(320);

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: scaleAndPositionTransform(
        index: index,
        currPageValue: context.read<FoodPageBodyBloc>().state.page,
        height: 220,
      ),
      child: Stack(
        children: [
          FoodItemImageView(
            index: index,
          ),
          FoodItemInfoBar(index: index),
        ],
      ),
    );
  }
}
