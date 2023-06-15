import 'package:calender_demo/features/delivery_details/delivery_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/custom_appbar.dart';
import 'widgets/calender_widget.dart';
import 'widgets/day_track_widget.dart';

// import 'package:intl/date_symbol_data_local.dart';

class DeliveryDetailsScreen extends StatefulWidget {
  const DeliveryDetailsScreen({super.key});

  @override
  DeliveryDetailsScreenState createState() => DeliveryDetailsScreenState();
}

class DeliveryDetailsScreenState extends State<DeliveryDetailsScreen> {
  // --------------disable sunday and monday--------------
  // bool _isDayEnabled(DateTime day) {
  //   // Define your own logic to enable or disable specific days
  //   // For example, let's disable weekends (Saturday and Sunday)
  //   return day.weekday != DateTime.saturday && day.weekday != DateTime.sunday;
  // }

// ----------------disable one day ------------------
  // bool _isDayEnabled(DateTime day) {
  //   // Disable 26th of June 2023
  //   if (day.year == 2023 && day.month == 6 && day.day == 26  ) {
  //     return false;
  //   }

  //   // Enable all other days
  //   return true;
  // }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DeliveryDetailsController>(
        init: DeliveryDetailsController(),
        builder: (controller) {
          return Scaffold(
            appBar: const CustomAppBar(
              title1: 'Delivery details',
              icon: SizedBox(),
              icon2: Icon(
                Icons.arrow_back_ios,
                color: Color(0xffbebebe),
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CalenderWidget(
                      controller: controller,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text('Selected Duration'),
                    ),
                    const DayTrackWidget(),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  backgroundColor: const Color(0xff365DD6)),
                              onPressed: () {},
                              child: const Text('Confirm Order')),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
