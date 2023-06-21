import 'package:get/get.dart';

class DeliveryDetailsController extends GetxController {
  DateTime? rangeStartDay;
  DateTime? rangeEndDay;

  var now = DateTime.now();
  var earlier = DateTime.now().subtract(const Duration(seconds: 5));

  @override
  void onInit() {
    super.onInit();
    rangeStartDay = null;
    rangeEndDay = null;
  }

  bool isDayEnabled(DateTime day) {
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
  void onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (rangeStartDay == null) {
      if (selectedDay
          .isBefore(DateTime.now().subtract(const Duration(hours: 24)))) {
        rangeStartDay = null;
        rangeEndDay = null;
      } else {
        rangeStartDay = selectedDay;
        rangeEndDay = null;

        update();
      }
    } else if (rangeStartDay != null &&
        rangeEndDay == null &&
        selectedDay.isAfter(rangeStartDay!)) {
      if (selectedDay.isBefore(DateTime.now())) {
        rangeStartDay = null;
        rangeEndDay = null;
      } else {
        rangeEndDay = selectedDay;

        update();
      }
    } else {
      rangeStartDay = null;
      rangeEndDay = null;
      update();
    }
  }
}
