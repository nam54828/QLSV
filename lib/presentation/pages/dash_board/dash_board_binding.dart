import 'package:get/get.dart';
import 'package:template/presentation/pages/dash_board/dash_board_controller.dart';
import 'package:template/presentation/pages/home/home_controller.dart';
import 'package:template/presentation/pages/intern/bt1/bt1_controller.dart';
import 'package:template/presentation/pages/intern/bt2/bt2_controller.dart';
import 'package:template/presentation/pages/intern/bt4/bt4_controller.dart';
import 'package:template/presentation/pages/student/add/add_controller.dart';
import 'package:template/presentation/pages/student/student_controller.dart';
import 'package:template/presentation/pages/subject/subject_controller.dart';

import '../intern/bt3/bt3_controller.dart';

class DashBoardBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<DashBoardController>(DashBoardController());
    Get.put<HomeController>(HomeController());
    Get.put<SubjectController>(SubjectController());
    Get.put<StudentController>(StudentController());
    Get.put<AddController>(AddController());
  }
}
