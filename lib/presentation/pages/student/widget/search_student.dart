import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:template/presentation/pages/student/student_controller.dart';

import '../../../../core/utils/color_resources.dart';

class SearchStudent extends GetView<StudentController>{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 35,
      width: 310,
      child: TextFormField(
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          hintText: "Enter keyword to find out...",
          hintStyle: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Colors.grey,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          contentPadding: EdgeInsets.only(left: 70, top: 6),
          border: InputBorder.none,
          suffixIcon: Icon(Icons.search, color: ColorResources.YELLOW_STUDENT,),

        ),

      ),
      decoration: BoxDecoration(
          color: ColorResources.GREY_STUDENT,
          borderRadius: BorderRadius.circular(10)
      ),
    );
  }
}