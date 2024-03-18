import 'package:get/get.dart';
import 'package:template/presentation/pages/intern/bt4/bt4_controller.dart';

class BT4Binding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => BT4Controller());
  }
}