import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/utils/color_resources.dart';
import '../../student/student_controller.dart';
import 'choose_subject.dart';

class DialogSubject extends GetView<StudentController>{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: double.infinity,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(32), bottomLeft: Radius.circular(32))),
      child: Column(
        children: [
          ChooseSubject(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 30,
                child: TextButton(onPressed: (){
                  for (int i = 0; i < controller.isSelected.length; i++) {
                    if (controller.isSelected[i]) {
                      String subject = controller.subjects[i];
                      print('Selected subject: $subject');
                    }
                  }
                  Get.back();
                },
                  child: Center(
                    child: Text("Save", style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w800,
                        color: Colors.white
                    ),),
                  ),),
                decoration: BoxDecoration(
                    color: ColorResources.BLUE_STUDENT,
                    borderRadius: BorderRadius.circular(32)
                ),
              ),
              SizedBox(width: 20,),
              Container(
                height: 34,
                child: TextButton(onPressed: (){
                  Get.back();
                },
                  child: Text("Cancel", style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w800,
                      color: ColorResources.BLUE_STUDENT
                  ),),),
              ),
            ],
          )
        ],
      ),
    );
  }
}