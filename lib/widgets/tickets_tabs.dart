import 'package:flutter/material.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTabHeadline;
  // ignore: non_constant_identifier_names
  final String SecondTabHeadline;
  const AppTicketTabs(
      {Key? key,
      required this.firstTabHeadline,
      // ignore: non_constant_identifier_names
      required this.SecondTabHeadline})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = AppLayout.getSize(context);
    return Container(
      padding: const EdgeInsets.all(3.5),
      height: 37,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xFFF4F6FD)),
      child: Row(
        children: [
          Container(
            width: size.width * 0.44,
            padding: const EdgeInsets.symmetric(horizontal: 7),
            decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.horizontal(left: Radius.circular(15)),
              color: Colors.grey.shade200,
            ),
            child: Center(child: Text(firstTabHeadline)),
          ),
          Container(
            width: size.width * 0.44,
            padding: const EdgeInsets.symmetric(horizontal: 7),
            decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.horizontal(right: Radius.circular(15)),
                color: Colors.white),
            child: Center(child: Text(SecondTabHeadline)),
          ),
        ],
      ),
    );
  }
}
