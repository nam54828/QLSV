import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:template/presentation/pages/student/add/add_controller.dart';
import 'package:template/presentation/pages/subject/subject_controller.dart';

class AddBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => AddController());
  }
}