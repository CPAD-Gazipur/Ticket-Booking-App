import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/utils.dart';
import 'package:ticket_booking_app/widgets/widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.backgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getWidth(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/img_1.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Gap(AppLayout.getWidth(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Book Tickets',
                    style: AppStyles.headLineStyle1,
                  ),
                  Gap(AppLayout.getHeight(3)),
                  Text(
                    'Dhaka, Bangladesh',
                    style: AppStyles.headLineStyle4,
                  ),
                  Gap(AppLayout.getHeight(5)),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getWidth(3),
                      vertical: AppLayout.getHeight(3),
                    ),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(100)),
                      color: const Color(0xFFFEF4F3),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(3)),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(AppLayout.getWidth(5)),
                        Text(
                          'Premium Status',
                          style: AppStyles.headLineStyle3.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF526799),
                          ),
                        ),
                        Gap(AppLayout.getWidth(5)),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      debugPrint('You Taped Edit.');
                    },
                    child: Text(
                      'Edit',
                      style: AppStyles.textStyle.copyWith(
                        color: AppStyles.primaryColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Gap(AppLayout.getHeight(8)),
          Divider(color: Colors.grey.shade300),
          Gap(AppLayout.getHeight(8)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppStyles.primaryColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                ),
              ),
              Positioned(
                top: -40,
                right: -45,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xFF264CD2),
                      width: 18,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(25),
                  vertical: AppLayout.getHeight(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: AppStyles.primaryColor,
                        size: 27,
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'You\'v got a new award',
                          style: AppStyles.headLineStyle2
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          'You have 43 flight in a year',
                          style: AppStyles.headLineStyle2.copyWith(
                            color: Colors.white.withOpacity(0.9),
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Text(
            'Accumulated Miles',
            style: AppStyles.headLineStyle2,
          ),
          Gap(AppLayout.getHeight(20)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                color: AppStyles.backgroundColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 1,
                    spreadRadius: 1,
                  )
                ]),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(15)),
                Text(
                  '190820',
                  style: AppStyles.headLineStyle1.copyWith(
                    fontSize: 45,
                    color: AppStyles.textColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Miles Accrue',
                      style: AppStyles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      '23 May, 2021',
                      style: AppStyles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(4)),
                Divider(color: Colors.grey.shade300),
                Gap(AppLayout.getHeight(4)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CustomColumn(
                      title: '23 042',
                      hintTitle: 'Miles',
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    CustomColumn(
                      title: 'Biman Bangladesh',
                      hintTitle: 'Received From',
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(12)),
                const CustomDot(
                  section: 12,
                  isColor: false,
                ),
                Gap(AppLayout.getHeight(12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CustomColumn(
                      title: '24',
                      hintTitle: 'Miles',
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    CustomColumn(
                      title: 'McDonal\'s',
                      hintTitle: 'Received From',
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(12)),
                const CustomDot(
                  section: 12,
                  isColor: false,
                ),
                Gap(AppLayout.getHeight(12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CustomColumn(
                      title: '54 340',
                      hintTitle: 'Miles',
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    CustomColumn(
                      title: 'Airline Co',
                      hintTitle: 'Received From',
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(15)),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          Center(
            child: InkWell(
              onTap: () {
                debugPrint('You just tap it.');
              },
              child: Text(
                'How to get more miles ?',
                style: AppStyles.textStyle.copyWith(
                  color: AppStyles.primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(20)),
        ],
      ),
    );
  }
}
