import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BT1Controller extends GetxController{
    final formKey = GlobalKey<FormState>();
    final TextEditingController aController = TextEditingController();
    final TextEditingController bController = TextEditingController();

    var a = 0.0.obs;
    var b = 0.0.obs;
    var result = 0.0.obs;

    void tinhToanKetQua(){
      if (a.value != 0) {
        result.value = -b.value / a.value;
      } else {
        result.value = double.infinity;
        Get.snackbar(
          "Thông báo",
          "Phương trình không phải là phương trình bậc nhất.",
          snackPosition: SnackPosition.TOP,
        );
      }
      print(result);
    }
}