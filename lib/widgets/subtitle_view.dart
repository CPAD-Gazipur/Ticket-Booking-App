import 'package:flutter/material.dart';

import '../utils/utils.dart';

class SubTitleView extends StatelessWidget {
  final String title;
  final Function() onViewAllPressed;
  const SubTitleView({
    Key? key,
    required this.title,
    required this.onViewAllPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppStyles.headLineStyle2,
        ),
        InkWell(
          onTap: onViewAllPressed,
          child: Text(
            'View all',
            style: AppStyles.textStyle.copyWith(color: primary),
          ),
        ),
      ],
    );
  }
}
