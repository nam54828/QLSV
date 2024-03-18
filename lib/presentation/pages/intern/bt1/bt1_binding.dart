import 'package:get/get.dart';
import 'package:template/presentation/pages/intern/bt1/bt1_controller.dart';

class BT1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BT1Controller>(() => BT1Controller());
  }
}