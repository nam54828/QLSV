import 'package:get/get.dart';
import 'package:template/presentation/pages/subject/add/add_controller.dart';

class AddSubjectBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => AddSubjectController());
  }
}