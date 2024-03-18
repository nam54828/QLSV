import 'package:get/get.dart';
import 'package:template/presentation/pages/intern/bt2/bt2_controller.dart';

class BT2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BT2Controller>(() => BT2Controller());
  }
}