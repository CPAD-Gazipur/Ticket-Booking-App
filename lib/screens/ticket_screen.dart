import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/database/app_info_list.dart';
import 'package:ticket_booking_app/utils/utils.dart';
import 'package:ticket_booking_app/widgets/widgets.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20),
            ),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                'Tickets',
                style: AppStyles.headLineStyle1,
              ),
              Gap(AppLayout.getHeight(20)),
              const CustomTabs(
                tabLabel1: 'Upcoming',
                tabLabel2: 'Previous',
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(
                  left: AppLayout.getHeight(15),
                ),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              const SizedBox(height: 1),
              Container(
                padding: EdgeInsets.only(
                  top: AppLayout.getHeight(20),
                  right: AppLayout.getHeight(16),
                  left: AppLayout.getHeight(16),
                  bottom: AppLayout.getHeight(20),
                ),
                margin:
                    EdgeInsets.symmetric(horizontal: AppLayout.getWidth(16)),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CustomColumn(
                          title: 'Flutter DB',
                          hintTitle: 'Passenger',
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        CustomColumn(
                          title: '5521 364 8549',
                          hintTitle: 'Passport',
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const CustomDot(
                      section: 15,
                      isColor: true,
                      width: 8,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CustomColumn(
                          title: '0055 444 77147',
                          hintTitle: 'Number of e-Ticket',
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        CustomColumn(
                          title: 'B2SG28',
                          hintTitle: 'Booking Code',
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const CustomDot(
                      section: 15,
                      isColor: true,
                      width: 8,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/visa.png',
                                  scale: 11,
                                ),
                                Text(
                                  ' *** 247',
                                  style: AppStyles.headLineStyle3,
                                ),
                              ],
                            ),
                            Gap(AppLayout.getHeight(5)),
                            Text(
                              'Payment Method',
                              style: AppStyles.headLineStyle4,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '\$249.99',
                              style: AppStyles.headLineStyle3,
                            ),
                            Gap(AppLayout.getHeight(5)),
                            Text(
                              'Price',
                              style: AppStyles.headLineStyle4,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 1),
              Container(
                padding: EdgeInsets.only(
                  top: AppLayout.getHeight(20),
                  right: AppLayout.getHeight(16),
                  left: AppLayout.getHeight(16),
                  bottom: AppLayout.getHeight(20),
                ),
                margin:
                    EdgeInsets.symmetric(horizontal: AppLayout.getWidth(16)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                    bottomRight: Radius.circular(AppLayout.getHeight(21)),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                  child: BarcodeWidget(
                    barcode: Barcode.code128(),
                    data: 'https://github.com/alamin-karno',
                    drawText: false,
                    height: 70,
                    width: double.infinity,
                    color: AppStyles.textColor,
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(
                  left: AppLayout.getHeight(15),
                ),
                child: TicketView(
                  ticket: ticketList[0],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
