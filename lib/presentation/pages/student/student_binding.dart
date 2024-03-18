import 'package:get/get.dart';
import 'package:template/presentation/pages/student/student_controller.dart';

class StudentBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<StudentController>(() => StudentController());
  }
}