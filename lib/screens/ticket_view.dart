import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/widgets/flight_container.dart';

import '../widgets/column_layout.dart';
import '../widgets/layout_builder_widget.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(169),
      // height: AppLayout.getHeight(167),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Showing the blue part of the card/ticket
            Container(
              decoration: BoxDecoration(
                  color:
                      isColor == null ? const Color(0xFF526799) : Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.getHeight(16)),
                      topRight: Radius.circular(AppLayout.getHeight(21)))),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'],
                          style: isColor == null
                              ? Styles.headLineStyle3.copyWith(
                                  color: Colors.white,
                                )
                              : Styles.headLineStyle3),
                      // const Spacer(),
                      Expanded(child: Container()),
                      const FlightEndPoints(isColor: true),
                      // Text('---', style: Styles.headLineStyle4.copyWith(color: Colors.white,)),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                              height: AppLayout.getHeight(24),
                              child: const AppLayoutBuilderWidget(
                                  sections: 6, isColor: false)
                              // LayoutBuilder(
                              //   builder: (BuildContext context , BoxConstraints constraints) {
                              //     print(constraints.constrainWidth());
                              //     return  Flex(
                              //       direction: Axis.horizontal,
                              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              //       mainAxisSize: MainAxisSize.max,
                              //       children: List.generate((constraints.constrainWidth()/6).floor(), (index) => SizedBox(
                              //         // width: AppLayout.getWidth(3), height: AppLayout.getHeight(1),
                              //         width: 3, height: 1,
                              //         child: DecoratedBox(
                              //           decoration: BoxDecoration(
                              //           color: isColor==null? Colors.white : Colors.grey.shade300,
                              //         )),
                              //       ) ),
                              //     );
                              //   },
                              // )
                              ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: isColor == null
                                    ? Colors.white
                                    : const Color(0xFF8ACCF7),
                              ),
                            ),
                          ),
                        ],
                      )),
                      // Icon(Icons.local_airport_rounded, color :Colors.white),
                      const FlightEndPoints(isColor: true),
                      // const Spacer(),
                      Expanded(child: Container()),
                      Text(ticket['to']['code'],
                          style: isColor == null
                              ? Styles.headLineStyle3.copyWith(
                                  color: Colors.white,
                                )
                              : Styles.headLineStyle3)
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
                              ? Styles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle4,
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: isColor == null
                            ? Styles.headLineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle4,
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: isColor == null
                              ? Styles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle4,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            // Showing the Orange part of the card/ticket
            Container(
              color: isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: isColor == null
                                ? Colors.grey.shade200
                                : Colors.white,
                            borderRadius: BorderRadius.only(
                                //Change layout here
                                topRight:
                                    Radius.circular(AppLayout.getHeight(10)),
                                bottomRight:
                                    Radius.circular(AppLayout.getHeight(10))))),
                  ),
                  const Expanded(
                      child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: AppLayoutBuilderWidget(
                      sections: 15,
                      isColor: false,
                    ),
                    // LayoutBuilder(
                    //   builder: (BuildContext context, BoxConstraints constraints){
                    //     return Flex(
                    //       direction: Axis.horizontal,
                    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //       mainAxisSize: MainAxisSize.max,
                    //       children: List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                    //         width: AppLayout.getWidth(5), height: AppLayout.getHeight(1),
                    //         child: DecoratedBox(decoration: BoxDecoration(
                    //           color: isColor==null? Colors.white : Colors.grey.shade300,
                    //         ))
                    //       ))
                    //     );
                    //   })
                  )),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: isColor == null
                                ? Colors.grey.shade200
                                : Colors.white,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)))),
                  )
                ],
              ),
            ),
            // Showing the bottom part of the Orange card/ticket
            Container(
                decoration: BoxDecoration(
                    color: isColor == null ? Styles.orangeColor : Colors.white,
                    borderRadius: BorderRadius.only(
                        //Change appLayout here
                        bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                        bottomRight:
                            Radius.circular(isColor == null ? 21 : 0))),
                padding: EdgeInsets.only(
                    left: AppLayout.getHeight(16),
                    top: AppLayout.getHeight(10),
                    right: AppLayout.getHeight(16),
                    bottom: AppLayout.getHeight(16)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: ticket['date'],
                          secondText: 'Date',
                          alignment: CrossAxisAlignment.start,
                          isColor: isColor,
                        ),
                        AppColumnLayout(
                          firstText: ticket['departure_time'],
                          secondText: 'Departure time',
                          alignment: CrossAxisAlignment.center,
                          isColor: isColor,
                        ),
                        AppColumnLayout(
                          firstText: ticket['number'].toString(),
                          secondText: 'Number',
                          alignment: CrossAxisAlignment.end,
                          isColor: isColor,
                        ),
                        // Column(
                        //   crossAxisAlignment: CrossAxisAlignment.start,
                        //   children: [
                        //     Text(ticket['date'], style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white) : Styles.headLineStyle3),
                        //     const Gap(5),
                        //     Text('Date', style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white) : Styles.headLineStyle4),

                        //   ],
                        // ),
                        // Column(
                        //   crossAxisAlignment: CrossAxisAlignment.center,
                        //   children: [
                        //     Text(ticket['departure_time'], style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white) : Styles.headLineStyle3),
                        //     const Gap(5),
                        //     Text('Departure time', style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white) : Styles.headLineStyle4),

                        //   ],
                        // ),
                        // Column(
                        //   crossAxisAlignment: CrossAxisAlignment.end,
                        //   children: [
                        //     Text(ticket['number'].toString(), style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white) : Styles.headLineStyle3),
                        //     const Gap(5),
                        //     Text('Number', style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white) : Styles.headLineStyle4),
                        //   ],
                        // )
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
