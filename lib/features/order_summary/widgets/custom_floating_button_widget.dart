import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
