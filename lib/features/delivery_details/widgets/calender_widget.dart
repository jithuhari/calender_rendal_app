import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../deliver_details.dart';

class CalenderWidget extends StatelessWidget {
  const CalenderWidget({
    super.key,
    required this.controller,
  });
  final DeliveryDetailsController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( horizontal:20.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 2.3,
        decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Colors.black12,
            ),
            borderRadius: BorderRadius.circular(10)),
        child: TableCalendar(
          rowHeight: 40,
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
    );
  }
}
