import 'package:get/get.dart';
import 'package:template/presentation/pages/intern/bt3/bt3_controller.dart';

class BT3Binding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => BT3Controller());
  }
}