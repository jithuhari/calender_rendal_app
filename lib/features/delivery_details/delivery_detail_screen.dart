import 'package:calender_demo/features/delivery_details/delivery_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';
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
            appBar: AppBar(
              title: const Text('Table Calendar Demo'),
            ),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: TableCalendar(
                  rowHeight: 50,
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: DateTime.now(),
                  rangeStartDay: controller.rangeStartDay,
                  rangeEndDay: controller.rangeEndDay,
                  enabledDayPredicate: controller.isDayEnabled,
                  onDaySelected: controller.onDaySelected,

                  // locale: 'ar-AE',
                  headerStyle: const HeaderStyle(
                      formatButtonVisible: false, titleCentered: true),
                  calendarStyle: CalendarStyle(
                    rangeStartDecoration: BoxDecoration(
                        color: Colors.blue.shade100, shape: BoxShape.circle),
                    rangeEndDecoration: BoxDecoration(
                        color: Colors.blue.shade100, shape: BoxShape.circle),
                    rangeHighlightColor: Colors.blue.shade100,
                  ),
                ),
              ),
            ),
          );
        });
  }
}
