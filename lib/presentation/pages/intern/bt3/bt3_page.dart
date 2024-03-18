import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:template/presentation/pages/intern/bt3/add_task/add_task_page.dart';
import 'package:template/presentation/pages/intern/bt3/bt3_controller.dart';
import 'package:template/presentation/pages/intern/bt3/widgets/dotted_add.dart';

class BT3Page extends GetView<BT3Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Danh sách công việc'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: Obx(
                    () => ListView.builder(
                  itemCount: controller.todoList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.blueGrey[100],
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ListTile(
                        title: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            controller.todoList[index],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            Get.defaultDialog(
                              title: "Xác nhận xóa",
                              middleText: "Bạn có chắc chắn muốn xóa công việc này không?",
                              actions: [
                                ElevatedButton(
                                  onPressed: () {
                                    controller.deleteTodo(index);
                                    Get.back();
                                  },
                                  child: Text('Có'),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  child: Text('Không'),
                                ),
                              ],
                            );
                          },
                          icon: Icon(Icons.delete, color: Colors.red,),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Get.to(() => AddTaskPage());
              },
              child: CustomPaint(
                painter: Dotted(),
                child: Container(
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                  child: Icon(Icons.add, color: Colors.black, size: 50),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
