import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/utils.dart';

class SearchBarWithIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  const SearchBarWithIcon({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: AppLayout.getHeight(12),
        horizontal: AppLayout.getWidth(12),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xFFBFC2DF),
          ),
          Gap(AppLayout.getWidth(10)),
          Text(
            label,
            style: AppStyles.headLineStyle4,
          ),
        ],
      ),
    );
  }
}
