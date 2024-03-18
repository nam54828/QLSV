import 'dart:async';

import 'package:flutter_countdown_timer/countdown_timer_controller.dart';
import 'package:get/get.dart';

class BT4Controller extends GetxController{
  var minutes = '0'.obs;
  var timeRemaining = 0.obs;
  CountdownTimerController? controller;

  void startTimer() {
    timeRemaining.value = int.parse(minutes.value) * 60;
    controller = CountdownTimerController(
        endTime: timeRemaining.value,
        onEnd: endTimer);

  }
  void endTimer() {
    print('Countdown ended');
  }

}