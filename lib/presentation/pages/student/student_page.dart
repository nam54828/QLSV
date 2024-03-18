import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:template/config/routes/route_path/app_route.dart';
import 'package:template/presentation/pages/student/add/add_page.dart';
import 'package:template/presentation/pages/student/student_controller.dart';
import 'package:template/presentation/pages/student/update/update_student_page.dart';
import 'package:template/presentation/pages/student/widget/delete_student.dart';
import 'package:template/presentation/pages/student/widget/search_student.dart';
import 'package:template/presentation/pages/student/widget/top_bar.dart';

import '../../../core/utils/color_resources.dart';

class StudentPage extends GetView<StudentController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: _buildBody(),
    );
  }

  Widget _buildBody(){
    const String settingIcon = "assets/icons/icon_setting.svg";
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20,20, 0),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SearchStudent(),
                        Container(
                          width: 35,
                          height: 35,
                          child: IconButton(onPressed: (){},
                            icon: SvgPicture.asset(
                                settingIcon
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: ColorResources.GREY_STUDENT,
                              borderRadius: BorderRadius.circular(10)
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Image.asset("assets/images/student.png", width: 76, height: 121,),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Student", style: TextStyle(
                              color: ColorResources.YELLOW_STUDENT,
                              fontWeight: FontWeight.w700,
                              fontSize: 19
                          ),),
                          Text("Management", style: TextStyle(
                              color: ColorResources.BLUE_STUDENT,
                              fontWeight: FontWeight.w700,
                              fontSize: 19
                          ),)
                        ],
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TopBar(),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("List students", style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.black
                          )
                      ),),
                      IconButton(onPressed: (){
                        Get.to(() => AddStudentPage());
                      },
                          icon: Icon(Icons.add_circle_outline, color:ColorResources.YELLOW_STUDENT, size: 18,)),
                    ],
                  ),
                  Row(
                    children: [
                      Text("View all", style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 8,
                          color: ColorResources.YELLOW_STUDENT
                      ),),
                      Icon(Icons.expand_more , color:ColorResources.YELLOW_STUDENT, size: 10,)
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Expanded(child:  Obx(() => ListView.builder(
          itemCount: controller.students.length,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 8),
                  child: Column(
                    children: [
                      Container(
                        width: 355,
                        height: 60,
                        decoration: BoxDecoration(
                            color: ColorResources.GREY_STUDENT,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              width: 200,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${controller.students[index].fullName}",
                                    style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    "${controller.students[index].contactInfo.email}",
                                    style: GoogleFonts.poppins(
                                        color: Color.fromRGBO(138, 138, 138, 1),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                    overflow: TextOverflow.ellipsis,
                                  ),

                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20, top: 10),
                              child: Row(
                                children: [
                                  IconButton(
                                      onPressed: () {
                                       Get.toNamed(AppRoute.EDIT_STUDENT, arguments: controller.students[index]);
                                        // showModalBottomSheet(context: context,
                                        //     isScrollControlled: true,
                                        //     builder: (BuildContext context){
                                        //       return FractionallySizedBox(
                                        //           heightFactor: 0.8,
                                        //           child: InkWell(
                                        //             onTap: (){
                                        //               //  Get.to(() => UpdateStudentPage(), arguments: controller.students[index] );
                                        //
                                        //               Get.toNamed(AppRoute.EDIT_STUDENT, arguments: controller.students[index]);
                                        //
                                        //             },
                                        //             child: UpdateStudentPage(),
                                        //           )
                                        //       );
                                        //     });
                                      },
                                      icon: SvgPicture.asset('assets/icons/edit_icon.svg')),
                                  DeleteStudentPage(studentIndex: index)
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: EdgeInsets.only(top: 12),
                    height: 24,
                    width: 28,
                    decoration: BoxDecoration(
                        color: ColorResources.BLUE_STUDENT,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        "${controller.students[index].averageScore}",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            fontSize: 8,
                            color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            );
          },
        ))),
      ],
    );
  }


}