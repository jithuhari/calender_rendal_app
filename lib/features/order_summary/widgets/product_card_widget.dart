import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 1,
            color: Colors.black12,
          )),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Item',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('iPad 2020 Model'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Order id : 123456789',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                Image(
                    height: 100,
                    width: 100,
                    image: AssetImage('assets/images/ipad.png'))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Pickup Address',
                        style: TextStyle(color: Colors.grey)),
                    SizedBox(
                      height: 10,
                    ),
                    Text('4th avenue,'),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Baker Street, 686868'),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text('Price', style: TextStyle(color: Colors.grey)),
                    SizedBox(
                      height: 10,
                    ),
                    Text('AED 775/-')
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
