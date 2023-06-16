import 'package:calender_demo/features/order_summary/widgets/order_status_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';
import 'widgets/custom_floating_button_widget.dart';
import 'widgets/product_card_widget.dart';

class OrderSummaryScreen extends StatelessWidget {
  const OrderSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingButton(),
      appBar: CustomAppBar(
        title1: 'Order Summary',
        icon: SizedBox(),
        icon2: Icon(
          Icons.arrow_back_ios,
          color: Color(0xffbebebe),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductCard(),
            SizedBox(
              height: 20,
            ),
            Text('Order Status'),
            SizedBox(
              height: 20,
            ),
            OrderStatusWidget(),
          ],
        ),
      ),
    );
  }
}
