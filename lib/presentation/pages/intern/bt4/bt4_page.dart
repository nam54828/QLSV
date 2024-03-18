import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:get/get.dart';
import 'package:template/presentation/pages/intern/bt4/bt4_controller.dart';

class BT4Page extends GetView<BT4Controller> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'Enter minutes',
          ),
          onChanged: (value) {
            controller.minutes.value = value;
          },
        ),
        SizedBox(height: 20),
        Obx(() => Text(
          'Time remaining: ${controller.timeRemaining.value} seconds',
          style: TextStyle(fontSize: 20),
        )),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            controller.startTimer();
          },
          child: Text('Start Timer'),
        ),
        SizedBox(height: 20),
        Obx(() {
          if (controller.controller != null) {
            return CountdownTimer(
              controller: controller.controller!,
              widgetBuilder: (_, CurrentRemainingTime? time) {
                if (time == null) {
                  return Text('Time expired');
                } else {
                  return Text(
                    '${time.min}:${time.sec}',
                    style: TextStyle(fontSize: 24,
                    ),
                  );
                }
              },
            );
          } else {
            return Text('Timer not started yet');
          }
        }),
      ],
    );
  }
}
