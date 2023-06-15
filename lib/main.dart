import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
// import 'package:intl/date_symbol_data_local.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Table Calendar Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  DateTime? _rangeStartDay;
  DateTime? _rangeEndDay;

  @override
  void initState() {
    super.initState();
    _rangeStartDay = null;
    _rangeEndDay = null;
    // initializeDateFormatting('fr_FR', null);
  }

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

// ----------------disable multiple days---------------

  bool _isDayEnabled(DateTime day) {
    // Disable 26th and 27th of June 2023
    if (day.year == 2023 &&
        day.month == 6 &&
        (day.day == 26 || day.day == 27 || day.day == 29)) {
      return false;
    }
    // Enable all other days
    return true;
  }

  // -------------range select---------------
  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (_rangeStartDay == null) {
      setState(() {
        _rangeStartDay = selectedDay;
        _rangeEndDay = null;
      });
    } else if (_rangeStartDay != null &&
        _rangeEndDay == null &&
        selectedDay.isAfter(_rangeStartDay!)) {
      setState(() {
        _rangeEndDay = selectedDay;
      });
    } else {
      setState(() {
        _rangeStartDay = selectedDay;
        _rangeEndDay = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
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
            rangeStartDay: _rangeStartDay,
            rangeEndDay: _rangeEndDay,
            enabledDayPredicate: _isDayEnabled,
            onDaySelected: _onDaySelected,

            // locale: 'ar-AE',
            headerStyle: const HeaderStyle(
                formatButtonVisible: false, titleCentered: true),
            calendarStyle: CalendarStyle(
              rangeStartDecoration: BoxDecoration(
                  color: Colors.grey.shade400, shape: BoxShape.circle),
              rangeEndDecoration: BoxDecoration(
                  color: Colors.grey.shade400, shape: BoxShape.circle),
              rangeHighlightColor: Colors.grey.shade400,
            ),
          ),
        ),
      ),
    );
  }
}
