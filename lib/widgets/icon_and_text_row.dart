import 'package:flutter/material.dart';
import 'package:infinitegleam/utils/dimension.dart';
import 'package:infinitegleam/widgets/small_text.dart';

class IconAndTextWidget extends StatelessWidget {
  const IconAndTextWidget(
      {super.key,
      required this.icon,
      required this.text,
      required this.iconColor});
  final IconData icon;
  final String text;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor),
        SizedBox(width: Dimensions.responsiveWidth(5)),
        SmallText(
          text,
        )
      ],
    );
  }
}
