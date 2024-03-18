import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:template/presentation/pages/intern/bt2/bt2_controller.dart';

class BT2Page extends GetView<BT2Controller> {
  const BT2Page({Key? key}) : super(key: key);

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
                            controller.result.value != 0 ? '${controller.result.value}' : '0',
                            style: TextStyle(color: Colors.black,
                                fontSize: 22),
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
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: controller.cController,
                    onChanged: (value){
                      controller.c.value = double.parse(value);
                    },
                    decoration: const InputDecoration(
                      labelText: "Hệ số C",
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(onPressed: (){
                    controller.tinhKetQua();
                    controller.aController.clear();
                    controller.bController.clear();
                    controller.cController.clear();
                  },
                      child:Text("Giải"))
                ],
              ),
            )
          ],
        ),),
    );
  }
}
