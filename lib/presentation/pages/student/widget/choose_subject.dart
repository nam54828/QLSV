import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


import '../../../../core/utils/color_resources.dart';
import '../../student/student_controller.dart';

class ChooseSubject extends GetView<StudentController>{
  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: 200,
      width: 400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 5, top: 5),
            child: Text(
              "Choose subject",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                color: ColorResources.BLUE_STUDENT,
                fontSize: 10,
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  childAspectRatio: 3
              ),
              itemCount: controller.subjects.length,
              itemBuilder: (context, index) {
                return Obx(() => CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  checkColor: ColorResources.YELLOW_STUDENT,
                  hoverColor: ColorResources.YELLOW_STUDENT,
                  title: Text(controller.subjects[index], style: GoogleFonts.poppins(
                      color: ColorResources.YELLOW_STUDENT,
                      fontSize: 10,
                      fontWeight: FontWeight.w700
                  ),),
                  value: controller.isSelected[index],
                  onChanged: (value) {
                    // controller.updateSelection(index, value!);
                    if (value == true) {
                      controller.updateSelection(index, true);
                    } else {
                      controller.updateSelection(index, false);
                    }
                  },
                )
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}