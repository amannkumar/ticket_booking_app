import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/widgets/double_text_widget.dart';
import 'package:ticket_booking_app/widgets/icon_text_widget.dart';
import 'package:ticket_booking_app/widgets/tickets_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Gap(55),
          Text(
            'What are \nyou looking for?',
            style: Styles.headLineStyle1.copyWith(fontSize: 40),
          ),
          const Gap(20),
          const AppTicketTabs(
              firstTabHeadline: 'Airline tickets', SecondTabHeadline: 'Hotels'),
          const Gap(20),
          const IconTextWidget(
            icon: Icons.flight_takeoff_rounded,
            text: 'Departure',
          ),
          const Gap(20),
          const IconTextWidget(
            icon: Icons.flight_land_rounded,
            text: 'Arrival',
          ),
          const Gap(25),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 50,
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(15)),
            child: Center(
              child: Text(
                'Find Tickets',
                style: Styles.headLineStyle3.copyWith(color: Colors.white),
              ),
            ),
          ),
          const Gap(40),
          const DoubleTextWidget(
              bigText: 'Upcoming Flights', smallText: 'View all'),
          const Gap(35),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                height: 420,
                width: size.width * 0.42,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/sit.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    const Gap(15),
                    Text(
                      ' 20% \n discounts on \n the early \n booking of \n this flight. \n Dont miss.',
                      style: Styles.headLineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    width: size.width * 0.42,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xFF3AB8BB)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Discount \nfor survey',
                          style: Styles.headLineStyle1
                              .copyWith(color: Colors.white),
                        ),
                        const Gap(15),
                        Text(
                          'Take the survey about our services and get discount',
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const Gap(15),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    width: size.width * 0.42,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.orange),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            'Take Love',
                            style: Styles.headLineStyle1
                                .copyWith(color: Colors.white),
                          ),
                        ),
                        const Gap(5),
                        Center(
                          child: RichText(
                            text: const TextSpan(children: [
                              TextSpan(
                                  text: '😃', style: TextStyle(fontSize: 38)),
                              TextSpan(
                                  text: '😝', style: TextStyle(fontSize: 50)),
                              TextSpan(
                                  text: '😁', style: TextStyle(fontSize: 38)),
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
