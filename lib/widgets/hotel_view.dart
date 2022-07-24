import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/utils.dart';

class HotelView extends StatelessWidget {
  final Map<String, dynamic> hotel;

  const HotelView({
    Key? key,
    required this.hotel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 17,
      ),
      margin: const EdgeInsets.only(
        right: 17,
        top: 5,
      ),
      width: size.width * 0.6,
      height: AppLayout.getHeight(320),
      decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 20,
              spreadRadius: 5,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              color: AppStyles.primaryColor,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage('assets/images/${hotel['image']}'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Gap(10),
          Text(
            hotel['place'],
            style:
                AppStyles.headLineStyle2.copyWith(color: AppStyles.khakiColor),
          ),
          const Gap(5),
          Text(
            hotel['destination'],
            style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
          ),
          const Gap(8),
          Text(
            '\$ ${hotel['price']} / month',
            style:
                AppStyles.headLineStyle1.copyWith(color: AppStyles.khakiColor),
          ),
        ],
      ),
    );
  }
}
