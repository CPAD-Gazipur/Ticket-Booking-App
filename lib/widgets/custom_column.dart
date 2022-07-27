import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/utils.dart';

class CustomColumn extends StatelessWidget {
  final String title, hintTitle;
  final CrossAxisAlignment alignment;
  final bool? isColor;

  const CustomColumn({
    Key? key,
    required this.title,
    required this.hintTitle,
    required this.alignment,
    this.isColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          title,
          style: isColor == null
              ? AppStyles.headLineStyle3.copyWith(color: Colors.white)
              : AppStyles.headLineStyle3.copyWith(color: Colors.black87),
        ),
        Gap(AppLayout.getHeight(3)),
        Text(
          hintTitle,
          style: isColor == null
              ? AppStyles.headLineStyle4.copyWith(color: Colors.white)
              : AppStyles.headLineStyle4,
        ),
      ],
    );
  }
}
