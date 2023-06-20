import 'package:flutter/material.dart';

import '../source/order_tracker.dart';

class OrderTrackerWidget extends StatelessWidget {
  const OrderTrackerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OrderTracker(
      status: Status.shipped,
      orderTitleAndDateList: [
        TextDto("20 June , 2023", ""),
      ],
      shippedTitleAndDateList: [
        TextDto("20 June , 2023", ""),
      ],
      outOfDeliveryTitleAndDateList: [
        TextDto("20 June , 2023", ""),
      ],
      deliveredTitleAndDateList: [
        TextDto("Due in 2 days ", "To be returned on 24 june,2023"),
      ],
    );
  }
}
