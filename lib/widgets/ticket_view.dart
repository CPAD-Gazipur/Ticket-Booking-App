import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:ticket_booking_app/utils/utils.dart';
import 'package:ticket_booking_app/widgets/widgets.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({
    Key? key,
    required this.ticket,
    this.isColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid == true ? 169 : 171),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              decoration: BoxDecoration(
                color: isColor == null ? const Color(0xFF526799) : Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getHeight(21)),
                  topRight: Radius.circular(AppLayout.getHeight(21)),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: isColor == null
                            ? AppStyles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : AppStyles.headLineStyle3
                                .copyWith(color: Colors.black87),
                      ),
                      Expanded(child: Container()),
                      ThickContainer(isColor: isColor),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(24),
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      (index) => SizedBox(
                                          height: 1,
                                          width: 3,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                              color: isColor == null
                                                  ? Colors.white
                                                  : Colors.grey.shade300,
                                            ),
                                          )),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport,
                                  color: isColor == null
                                      ? Colors.white
                                      : const Color(0xFF8ACCF7),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ThickContainer(isColor: isColor),
                      Expanded(child: Container()),
                      Text(
                        ticket['to']['code'],
                        style: isColor == null
                            ? AppStyles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : AppStyles.headLineStyle3
                                .copyWith(color: Colors.black87),
                      ),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['from']['name'],
                          style: isColor == null
                              ? AppStyles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : AppStyles.headLineStyle4,
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: isColor == null
                            ? AppStyles.headLineStyle4
                                .copyWith(color: Colors.white)
                            : AppStyles.headLineStyle4
                                .copyWith(color: Colors.black),
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: isColor == null
                              ? AppStyles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : AppStyles.headLineStyle4,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: isColor == null ? AppStyles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(AppLayout.getHeight(10)),
                          bottomRight: Radius.circular(AppLayout.getHeight(10)),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(AppLayout.getHeight(12)),
                      child: CustomDot(
                        isColor: isColor,
                        section: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(AppLayout.getHeight(10)),
                          bottomLeft: Radius.circular(AppLayout.getHeight(10)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: AppLayout.getHeight(10),
                right: AppLayout.getHeight(16),
                left: AppLayout.getHeight(16),
                bottom: AppLayout.getHeight(16),
              ),
              decoration: BoxDecoration(
                color: isColor == null ? AppStyles.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: isColor == null
                      ? Radius.circular(AppLayout.getHeight(21))
                      : Radius.zero,
                  bottomRight: isColor == null
                      ? Radius.circular(AppLayout.getHeight(21))
                      : Radius.zero,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomColumn(
                    title: ticket['date'],
                    hintTitle: 'Date',
                    alignment: CrossAxisAlignment.start,
                    isColor: isColor,
                  ),
                  CustomColumn(
                    title: ticket['departure_time'],
                    hintTitle: 'Departure Time',
                    alignment: CrossAxisAlignment.center,
                    isColor: isColor,
                  ),
                  CustomColumn(
                    title: '${ticket['number']}',
                    hintTitle: 'Number',
                    alignment: CrossAxisAlignment.end,
                    isColor: isColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
