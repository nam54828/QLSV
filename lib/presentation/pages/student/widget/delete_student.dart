import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:template/core/utils/color_resources.dart';
import 'package:template/presentation/pages/student/student_controller.dart';


class DeleteStudentPage extends StatefulWidget {
  final studentIndex;
  const DeleteStudentPage({Key? key, this.studentIndex}) : super(key: key);

  @override
  State<DeleteStudentPage> createState() => _DeleteStudentPageState();
}

class _DeleteStudentPageState extends State<DeleteStudentPage> {
  final String deleteIcon = "assets/icons/delete_icon.svg";
  final studentCtrl = Get.find<StudentController>();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.dialog(
            barrierDismissible: false,
            Dialog(
              child: WillPopScope(
                onWillPop: () async => false,
                child: Container(
                  height: 150,
                  width: 350,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Center(
                          child: Text("Are you sure to delete this student?", style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: ColorResources.BLUE_STUDENT
                          ),),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 30,
                            child: TextButton(onPressed: (){
                              studentCtrl.deleteStudent(studentCtrl.students[widget.studentIndex].id ?? "");
                              Get.back();
                            },
                              child: Center(
                                child: Text("Delete", style: GoogleFonts.poppins(
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
                            decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Color.fromRGBO(0, 33, 132, 1)),
                                borderRadius: BorderRadius.circular(32)
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
        );
      },
      child: SvgPicture.asset(
          deleteIcon
      ),
    );
  }
}
