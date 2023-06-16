import 'package:flutter/material.dart';
import 'package:order_tracker_zen/order_tracker_zen.dart';

import '../deliver_details.dart';

class DayTrackWidget extends StatelessWidget {
  const DayTrackWidget({
    super.key,
    required this.controller,
  });

  final DeliveryDetailsController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: OrderTrackerZen(
        tracker_data: [
          TrackerData(
            title: "",
            date: controller.rangeStartDay.toString() == 'null'
                ? 'Select Start date'
                : '${controller.rangeStartDay!.day.toString()}- ${controller.rangeStartDay!.month.toString()}-${controller.rangeStartDay!.year.toString()}',
            tracker_details: [
              TrackerDetails(
                title: "",
                datetime: "",
              ),
            ],
          ),
          TrackerData(
            title: "",
            date: controller.rangeEndDay.toString() == 'null'
                ? 'Select End Date'
                : '${controller.rangeEndDay!.day.toString()}- ${controller.rangeEndDay!.month.toString()}-${controller.rangeEndDay!.year.toString()}',
            tracker_details: [
              TrackerDetails(
                title: "",
                datetime: "",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
