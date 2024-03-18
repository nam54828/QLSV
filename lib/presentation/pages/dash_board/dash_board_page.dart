import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:template/core/base_widget/izi_lazy_index_stack.dart';
import 'package:template/core/export/core_export.dart';
import 'package:template/presentation/pages/dash_board/dash_board_controller.dart';
import 'package:template/presentation/pages/dash_board/default_page.dart';
import 'package:template/presentation/pages/home/home_page.dart';
import 'package:template/presentation/pages/intern/bt1/bt1_page.dart';
import 'package:template/presentation/pages/intern/bt2/bt2_page.dart';
import 'package:template/presentation/pages/intern/bt4/bt4_page.dart';
import 'package:template/presentation/pages/student/student_page.dart';

import '../../../core/helper/app_text.dart';
import '../intern/bt3/bt3_page.dart';

class DashBoardPage extends GetView<DashBoardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Obx(() {
        return LazyIndexedStack(
            index: controller.currentIndex.value,
            children: [
              HomePage(),
              StudentPage(),
              const DefaultPage(),
              const DefaultPage()
            ]);
      }),
      bottomNavigationBar: Obx(
        () => BottomAppBar(
          color: Color.fromRGBO(0, 33, 132, 1),
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: _buildBottomNavigationBar(),
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          onTap: () {
            controller.onChangeDashboardPage(index: 0);
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                ),
                child: Image.asset(
                  ImagesPath.home,
                  color: controller.currentIndex.value == 0
                      ? ColorResources.Manager_Student
                      : ColorResources.WHITE_BOTTOM,
                  width: 28.r,
                  height: 28.r,
                ),
              ),
              // const SizedBox(height: 6),
              // Text(
              //   'BT1',
              //   style: AppText.text10.copyWith(
              //     color: controller.currentIndex.value == 0
              //         ? ColorResources.COLOR_3B71CA
              //         : ColorResources.COLOR_677275,
              //     fontWeight: controller.currentIndex.value == 0
              //         ? FontWeight.w700
              //         : FontWeight.w400,
              //   ),
              // )
            ],
          ),
        ),
        InkWell(
          onTap: () {
            controller.onChangeDashboardPage(index: 1);
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                child: Image.asset(
                  ImagesPath.manager,
                  color: controller.currentIndex.value == 1
                      ? ColorResources.Manager_Student
                      : ColorResources.WHITE_BOTTOM,
                  width: 28.r,
                  height: 28.r,
                ),
              ),
              // const SizedBox(height: 6),
              // Text(
              //   'BT2',
              //   style: AppText.text10.copyWith(
              //     color: controller.currentIndex.value == 0
              //         ? ColorResources.COLOR_3B71CA
              //         : ColorResources.COLOR_677275,
              //     fontWeight: controller.currentIndex.value == 0
              //         ? FontWeight.w700
              //         : FontWeight.w400,
              //   ),
              // )
            ],
          ),
        ),
        InkWell(
          onTap: () {
            controller.onChangeDashboardPage(index: 2);
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                child: Image.asset(
                  ImagesPath.setting,
                  color: controller.currentIndex.value == 2
                      ? ColorResources.Manager_Student
                      : ColorResources.WHITE_BOTTOM,
                  width: 28.r,
                  height: 28.r,
                ),
              ),
              // const SizedBox(height: 6),
              // Text(
              //   'BT3',
              //   style: AppText.text10.copyWith(
              //     color: controller.currentIndex.value == 2
              //         ? ColorResources.COLOR_3B71CA
              //         : ColorResources.COLOR_677275,
              //     fontWeight: controller.currentIndex.value == 2
              //         ? FontWeight.w700
              //         : FontWeight.w400,
              //   ),
              // ),
            ],
          ),
        ),
        // InkWell(
        //   onTap: () {
        //     controller.onChangeDashboardPage(index: 3);
        //   },
        //   child: Column(
        //     mainAxisSize: MainAxisSize.min,
        //     children: [
        //       Container(
        //         decoration: BoxDecoration(
        //           boxShadow: [
        //             if (controller.currentIndex.value == 3)
        //               BoxShadow(
        //                 color: ColorResources.COLOR_3B71CA.withOpacity(0.4),
        //                 blurRadius: 10,
        //                 offset: const Offset(-4, 4),
        //               )
        //           ],
        //         ),
        //         child: Image.asset(
        //           ImagesPath.icChat,
        //           color: controller.currentIndex.value == 3
        //               ? ColorResources.COLOR_3B71CA
        //               : ColorResources.COLOR_677275,
        //           width: 28.r,
        //           height: 28.r,
        //         ),
        //       ),
        //       const SizedBox(height: 6),
        //       Text(
        //         'dash_board_003'.tr,
        //         style: AppText.text10.copyWith(
        //           color: controller.currentIndex.value == 3
        //               ? ColorResources.COLOR_3B71CA
        //               : ColorResources.COLOR_677275,
        //           fontWeight: controller.currentIndex.value == 3
        //               ? FontWeight.w700
        //               : FontWeight.w400,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        // InkWell(
        //   onTap: () {
        //     controller.onChangeDashboardPage(index: 4);
        //   },
        //   child: Column(
        //     mainAxisSize: MainAxisSize.min,
        //     children: [
        //       Container(
        //         child: Image.asset(
        //           ImagesPath.user,
        //           color: controller.currentIndex.value == 4
        //               ? ColorResources.Manager_Student
        //               : ColorResources.WHITE_BOTTOM,
        //           width: 28.r,
        //           height: 28.r,
        //         ),
        //       ),
        //       const SizedBox(height: 6),
        //       Text(
        //         'BT4'.tr,
        //         style: AppText.text10.copyWith(
        //           color: controller.currentIndex.value == 4
        //               ? ColorResources.COLOR_3B71CA
        //               : ColorResources.COLOR_677275,
        //           fontWeight: controller.currentIndex.value == 4
        //               ? FontWeight.w700
        //               : FontWeight.w400,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        InkWell(
          onTap: () {
            controller.onChangeDashboardPage(index: 3);
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                child: Image.asset(
                  ImagesPath.user,
                  color: controller.currentIndex.value == 3
                      ? ColorResources.Manager_Student
                      : ColorResources.WHITE_BOTTOM,
                  width: 28.r,
                  height: 28.r,
                ),
              ),
              // const SizedBox(height: 6),
              // Text(
              //   'BT5',
              //   style: AppText.text10.copyWith(
              //     color: controller.currentIndex.value == 4
              //         ? ColorResources.COLOR_3B71CA
              //         : ColorResources.COLOR_677275,
              //     fontWeight: controller.currentIndex.value == 4
              //         ? FontWeight.w700
              //         : FontWeight.w400,
              //   ),
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
