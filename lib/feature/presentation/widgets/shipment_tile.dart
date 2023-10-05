import 'package:clean_code_with_bloc/core/utils/responsive_ui_service.dart';
import 'package:flutter/material.dart';

class ShipmentTile extends StatelessWidget {
  final Size screenSize;
  final bool isOrderSent;
  final String title;

  const ShipmentTile(
      {super.key,
      required this.screenSize,
      required this.isOrderSent,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0),
      child: Card(
        elevation: 3,
        child: Container(
          // width: isOrderSent ? screenSize.width * 0.6 : screenSize.width * 0.65,
          height: isOrderSent ? 110.h : 95.h,
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 2.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
