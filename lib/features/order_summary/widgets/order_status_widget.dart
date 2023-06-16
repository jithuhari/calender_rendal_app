import 'package:flutter/material.dart';
import 'package:order_tracker_zen/order_tracker_zen.dart';

class OrderStatusWidget extends StatelessWidget {
  const OrderStatusWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: OrderTrackerZen(
        tracker_data: [
          TrackerData(
            title: "Order Placed",
            date: "",
            tracker_details: [
              TrackerDetails(
                title: "20 june,2023",
                datetime: "",
              ),
            ],
          ),
          TrackerData(
            title: "Order Confirmed",
            date: "",
            tracker_details: [
              TrackerDetails(
                title: "20 june,2023",
                datetime: "",
              ),
            ],
          ),
          TrackerData(
            title: "Order Picked Up",
            date: "",
            tracker_details: [
              TrackerDetails(
                title: "20 june,2023",
                datetime: "",
              ),
            ],
          ),
          TrackerData(
            title: "Order Returned",
            date: "",
            tracker_details: [
              TrackerDetails(
                title: "20 june,2023",
                datetime: "",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
