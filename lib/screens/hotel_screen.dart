import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200, blurRadius: 2, spreadRadius: 1)
          ]),
      margin: const EdgeInsets.only(right: 17, top: 5),
      width: size.width * 0.6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/${hotel['image']}"),
              ),
            ),
          ),
          const Gap(10),
          Text(
            hotel['place'],
            style: Styles.headLineStyle2.copyWith(color: Colors.amber),
          ),
          const Gap(5),
          Text(
            hotel['destination'],
            style: Styles.headLineStyle3.copyWith(color: Colors.amber),
          ),
          const Gap(8),
          Text(
            'Rs ${hotel['price']}/night',
            style: Styles.headLineStyle2.copyWith(color: Colors.amber),
          ),
        ],
      ),
    );
  }
}
