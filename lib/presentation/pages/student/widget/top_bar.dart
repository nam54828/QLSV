import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:template/presentation/pages/student/student_controller.dart';

class TopBar extends GetView<StudentController>{
  @override
  Widget build(BuildContext context){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        buildButton('Students'),
        buildButton('Subject'),
        buildButton('Evaluation'),
        buildButton('Event'),
      ],
    );
  }
  Widget buildButton(String text) {
    return Obx(() {
      final bool isSelected = controller.selectedButton.value == text;
      final Color backgroundColor = isSelected ? const Color.fromRGBO(0, 33, 132, 1) : Colors.white;
      final Color textColor = isSelected ? Colors.white : Colors.grey;

      return InkWell(
        onTap: () {
          controller.selectButton(text);
        },
        child: Container(
          width: 75,
          height: 25,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: textColor,
                ),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      );
    });
  }
}