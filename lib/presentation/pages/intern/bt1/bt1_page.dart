import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:template/presentation/pages/intern/bt1/bt1_controller.dart';

class BT1Page extends GetView<BT1Controller> {
  const BT1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Form(
            key: controller.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                   Obx(() =>  Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     crossAxisAlignment: CrossAxisAlignment.end,
                     children: [
                       Text(
                         controller.result.value != 0 ? 'Nghiệm của phương trình là x=\n${controller.result.value}' : '0',
                         softWrap: true,
                         style: const TextStyle(color: Colors.black,
                         fontSize: 20),
                         textAlign: TextAlign.right,
                       ),
                     ],
                   ),)

                  ],
                ),
                TextField(
                  controller: controller.aController,
                  keyboardType: TextInputType.number,
                  onChanged: (value){
                     controller.a.value = double.parse(value);
                  },
                  decoration: const InputDecoration(
                  labelText: "Hệ số a",
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: controller.bController,
                  onChanged: (value){
                    controller.b.value = double.parse(value);
                  },
                  decoration: const InputDecoration(
                    labelText: "Hệ số B",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      if ( controller.aController.text.trim().isNotEmpty ||
                          controller.bController.text.trim().isNotEmpty)
                      {
                        controller.tinhToanKetQua();
                        controller.aController.clear();
                        controller.bController.clear();
                      } else {
                        Get.snackbar(
                          "Thông báo",
                          "Vui lòng nhập giá trị!",
                          snackPosition: SnackPosition.TOP,
                        );
                      }
                    },
                    child:const Text("Giải"))
              ],
            ),
          )
        ],
      ),),
    );
  }
}
