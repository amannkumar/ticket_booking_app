import '../utils/app_info_list.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/screens/ticket_view.dart';

import '../utils/app_styles.dart';
import '../widgets/column_layout.dart';
import '../widgets/layout_builder_widget.dart';
import '../widgets/tickets_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final size = AppLayout.getSize(context);
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: Stack(
          children: [
            ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              children: [
                const Gap(40),
                Text(
                  'Tickets',
                  style: Styles.headLineStyle1,
                ),
                const Gap(20),
                const AppTicketTabs(
                    firstTabHeadline: 'Upcoming',
                    SecondTabHeadline: 'Previous'),
                const Gap(20),
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  child: TicketView(ticket: ticketList[0], isColor: true),
                ),
                const SizedBox(
                  height: 1,
                ),
                Container(
                  color: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstText: 'Flutter DB',
                          secondText: 'Passenger',
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        AppColumnLayout(
                            firstText: '5221 478566',
                            secondText: 'Passport',
                            alignment: CrossAxisAlignment.end,
                            isColor: false)
                      ],
                    ),
                    const Gap(20),
                    const AppLayoutBuilderWidget(
                      sections: 15,
                      isColor: false,
                      width: 5,
                    ),
                    const Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstText: '0055 444 77147',
                          secondText: 'Number of E-tricket',
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        AppColumnLayout(
                            firstText: 'B2SG28',
                            secondText: 'Booking code',
                            alignment: CrossAxisAlignment.end,
                            isColor: false)
                      ],
                    ),
                    const Gap(20),
                    const AppLayoutBuilderWidget(
                      sections: 15,
                      isColor: false,
                      width: 5,
                    ),
                    const Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/visa.png',
                                  scale: 11,
                                ),
                                Text(
                                  ' *** 2462',
                                  style: Styles.headLineStyle3,
                                )
                              ],
                            ),
                            const Gap(5),
                            Text(
                              'Payment method',
                              style: Styles.headLineStyle4,
                            )
                          ],
                        ),
                        // AppColumnLayout(firstText: '***2462', secondText: 'Payment method', alignment: CrossAxisAlignment.start,isColor: false,),
                        const AppColumnLayout(
                            firstText: '\$249.99',
                            secondText: 'Price',
                            alignment: CrossAxisAlignment.end,
                            isColor: false)
                      ],
                    ),
                  ]),
                ),
                const SizedBox(
                  height: 1,
                ),
                /* bar code */
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(21),
                          bottomLeft: Radius.circular(21))),
                  margin: const EdgeInsets.only(left: 15, right: 15),
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      /*child: BarCodeWidget(
                        barcode: BarCode.code128(),
                        data: '',
                        drawText: false,
                        color: Styles.textColor,
                        width: double.infinity,
                        height: 70,
                      ),*/
                    ),
                  ),
                ),
                const Gap(20),
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  child: TicketView(ticket: ticketList[0]),
                ),
              ],
            ),
            Positioned(
                left: 22,
                top: 295,
                child: Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor, width: 2),
                  ),
                  child: CircleAvatar(
                      maxRadius: 4, backgroundColor: Styles.textColor),
                )),
            Positioned(
                right: 22,
                top: 295,
                child: Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor, width: 2),
                  ),
                  child: CircleAvatar(
                      maxRadius: 4, backgroundColor: Styles.textColor),
                ))
          ],
        ));
  }
}
