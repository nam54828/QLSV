import 'package:get/get.dart';
import 'package:template/presentation/pages/student/update/update_student_controller.dart';

class UpdateStudentBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => UpdateStudentController());
  }
}