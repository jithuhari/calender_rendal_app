import 'package:flutter/material.dart';
import 'package:order_tracker_zen/order_tracker_zen.dart';

class DayTrackWidget extends StatelessWidget {
  const DayTrackWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: OrderTrackerZen(
        tracker_data: [
          TrackerData(
            title: "",
            date: "Sat, 8 Apr '22",
            tracker_details: [
              TrackerDetails(
                title: "",
                datetime: "",
              ),
            ],
          ),
          TrackerData(
            title: "",
            date: "Sat, 8 Apr '22",
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
