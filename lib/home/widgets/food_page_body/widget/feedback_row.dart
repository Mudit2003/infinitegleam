import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinitegleam/utils/colors.dart';
import 'package:infinitegleam/widgets/small_text.dart';

class FeedbackRow extends StatelessWidget {
  const FeedbackRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Wrap(
          children: List.generate(
            5,
            (index) => Icon(
              Icons.star,
              size: 15.sp,
              color: AppColors.mainColor,
            ),
          ),
        ),
        const Spacer(flex: 1),
        const SmallText('4.5'),
        const Spacer(flex: 1),
        const SmallText('1287'),
        const Spacer(flex: 1),
        const SmallText('comments'),
        const Spacer(flex: 4),
      ],
    );
  }
}
