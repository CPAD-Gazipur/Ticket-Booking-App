import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/database/app_info_list.dart';

import '../utils/utils.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.backgroundColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(40)),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning',
                          style: AppStyles.headLineStyle3,
                        ),
                        Gap(AppLayout.getHeight(5)),
                        Text(
                          'Book Tickets',
                          style: AppStyles.headLineStyle1,
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: AppLayout.getHeight(50),
                      width: AppLayout.getWidth(50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/img_1.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(25)),
                const SearchBarWithIcon(
                  icon: FluentSystemIcons.ic_fluent_search_regular,
                  label: 'Search',
                ),
                Gap(AppLayout.getHeight(40)),
                SubTitleView(
                  title: 'Upcoming Flights',
                  onViewAllPressed: () {
                    debugPrint('Upcoming Flights View All');
                  },
                ),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(15)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: AppLayout.getWidth(20)),
            child: Row(
              children: ticketList
                  .map((ticket) => TicketView(ticket: ticket))
                  .toList(),
            ),
          ),
          Gap(AppLayout.getHeight(15)),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
            ),
            child: SubTitleView(
              title: 'Hotels',
              onViewAllPressed: () {
                debugPrint('Hotels View All');
              },
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(
              left: AppLayout.getWidth(20),
              top: AppLayout.getHeight(5),
            ),
            child: Row(
              children:
                  hotelList.map((hotel) => HotelView(hotel: hotel)).toList(),
            ),
          )
        ],
      ),
    );
  }
}
