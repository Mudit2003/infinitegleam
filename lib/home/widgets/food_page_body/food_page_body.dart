import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinitegleam/home/widgets/food_page_body/bloc/food_page_body_bloc.dart';
import 'package:infinitegleam/home/widgets/food_page_body/widget/body_widgets.dart';
import 'package:infinitegleam/utils/colors.dart';
import 'package:infinitegleam/utils/dimension.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  late final PageController _pageController;
  @override
  void initState() {
    _pageController = PageController(viewportFraction: 0.85);
    super.initState();
    _pageController.addListener(() {
      context
          .read<FoodPageBodyBloc>()
          .add(FoodPageBodyEvent(_pageController.page ?? 0.0));
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FoodPageBodyBloc, FoodPageBodyState>(
      builder: (context, state) {
        // ignore: sized_box_for_whitespace
        return Column(
          children: [
            // here I can use a fractionally sized box for better code
            Container(
              height: Dimensions.responsiveHeight(320),
              child: PageView.builder(
                controller: _pageController,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return FoodPageItem(index: index);
                },
              ),
            ),

            DotsIndicator(
              dotsCount: 5,
              position:
                  (context.read<FoodPageBodyBloc>().state.page + 0.5).floor(),
              decorator: DotsDecorator(
                activeColor: AppColors.mainColor,
                size: Size.square(Dimensions.responsiveHeight(5)),
                activeSize: Size(
                  Dimensions.responsiveHeight(18),
                  Dimensions.responsiveWidth(9),
                ),
                activeShape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(Dimensions.responsiveHeight(10)),
                ),
              ),
            )
          ],
        );
      },
    );
  }

  // if there is a container inside a container container takes the whole space of previous one without caring about given height
}
