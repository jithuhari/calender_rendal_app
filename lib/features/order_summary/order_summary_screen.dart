import 'package:calender_demo/features/order_summary/widgets/order_status_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';
import 'widgets/product_card_widget.dart';

class OrderSummaryScreen extends StatelessWidget {
  const OrderSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xff365DD6),
                  borderRadius: BorderRadius.circular(10)),
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image(
                          height: 40,
                          width: 40,
                          fit: BoxFit.contain,
                          image: AssetImage('assets/images/profile.jpg')),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Karim Benzema',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text('Lender', style: TextStyle(color: Colors.white))
                      ],
                    ),
                    Icon(
                      Icons.call,
                      color: Colors.white,
                    )
                  ]),
            ),
          ],
        ),
      ),
      appBar: const CustomAppBar(
        title1: 'Order Summary',
        icon: SizedBox(),
        icon2: Icon(
          Icons.arrow_back_ios,
          color: Color(0xffbebebe),
        ),
      ),
      body: const Padding(
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
