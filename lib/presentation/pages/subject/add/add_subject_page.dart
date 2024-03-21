import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:template/data/model/subject/subject_model.dart';
import 'package:template/presentation/pages/subject/add/add_controller.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/color_resources.dart';
import '../../student/widget/dialog_subject.dart';

class AddSubjectPage extends GetView<AddSubjectController> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: _widgetBody(context),
    );
  }
  Widget _widgetBody(BuildContext context){
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 110),
                width: double.infinity,
                height: 700,
                decoration: const BoxDecoration(
                    color: ColorResources.BLUE_ADD_STUDENT,
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(46), topRight: Radius.circular(46))
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: Image.asset("assets/images/student.png", width: 76, height: 121,),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Student", style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: ColorResources.YELLOW_STUDENT,
                              fontWeight: FontWeight.w700,
                              fontSize: 19
                          )
                      ),),
                      Text("Management", style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: ColorResources.BLUE_STUDENT,
                            fontWeight: FontWeight.w700,
                            fontSize: 19
                        ),
                      ))
                    ],
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 130, left: 190),
                child: Text("Add subject", style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: ColorResources.BLUE_ACCENT_STUDENT
                ) ,),
              ),
              Container(
                margin: EdgeInsets.only(top: 150),
                child: Padding(
                  padding: const EdgeInsets.all(23.0),
                  child: Form(
                    key: controller.formkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Fullname", style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: Colors.white
                        ),),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: double.infinity,
                          height: 50,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Đỗ Đức Nam",
                                  hintStyle: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey
                                      )
                                  ),
                                  border: InputBorder.none
                              ),
                              controller: controller.fullNameController,
                              onSaved: (value){
                                controller.fullNameController.text = value!;
                              },
                              validator: (value){
                                if(value!.isEmpty){
                                  return "Vui lòng nhập tên của bạn";
                                }
                                return null;
                              },
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 6,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text("Class", style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12,
                                        color: Colors.white
                                    ),
                                      textAlign: TextAlign.start,),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 175,
                                    height: 50,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            hintText: "ST20A2A",
                                            hintStyle: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.grey
                                                )
                                            ),
                                            border: InputBorder.none
                                        ),
                                        controller: controller.classController,
                                        onSaved: (value){
                                          controller.classController.text = value!;
                                        },
                                        validator: (value){
                                          if(value!.isEmpty){
                                            return "Vui lòng nhập lớp của bạn!";
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              flex: 5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text("Student ID", style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white
                                    ),),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 50,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            hintText: "54828",
                                            hintStyle: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.grey
                                                )
                                            ),
                                            border: InputBorder.none
                                        ),
                                        controller: controller.studentIdController,
                                        onSaved: (value){
                                          controller.studentIdController.text = value!;
                                        },
                                        validator: (value){
                                          if(value!.isEmpty){
                                            return "Vui lòng nhập IDSV của bạn";
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 6,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text("School term", style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12,
                                        color: Colors.white
                                    ),
                                      textAlign: TextAlign.start,),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 50,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            hintText: "Term 2/2023",
                                            hintStyle: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.grey
                                                )
                                            ),
                                            border: InputBorder.none
                                        ),
                                        controller: controller.termController,
                                        onSaved: (value){
                                          controller.termController.text = value!;
                                        },
                                        validator: (value){
                                          if(value!.isEmpty){
                                            return "Vui lòng nhập học kỳ!";
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              flex: 4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text("Quantity of credits", style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white
                                    ),),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 110,
                                    height: 50,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: "10/29/2002",
                                          hintStyle: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.grey
                                              )
                                          ),
                                          border: InputBorder.none,
                                        ),
                                        controller: controller.creditController,
                                        onSaved: (value){
                                          controller.creditController.text = value!;
                                        },
                                        validator: (value){
                                          if(value!.isEmpty){
                                            return "Vui lòng nhập ngày, tháng, năm sinh của bạn!";
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        Text("Registering status", style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Colors.white
                        ),),
                        const SizedBox(
                          height: 10,
                        ),
                        // Container(
                        //   width: double.infinity,
                        //   height: 50,
                        //   child: Padding(
                        //     padding: const EdgeInsets.only(left: 15),
                        //     child: TextFormField(
                        //       decoration: InputDecoration(
                        //           hintText: "Chờ xác nhận",
                        //           hintStyle: GoogleFonts.poppins(
                        //               textStyle: TextStyle(
                        //                   fontSize: 12,
                        //                   fontWeight: FontWeight.w400,
                        //                   color: Colors.grey
                        //               )
                        //           ),
                        //           border: InputBorder.none
                        //       ),
                        //       controller: controller.registrationController,
                        //       validator: (value){
                        //         if(value!.isEmpty){
                        //           return "Vui lòng nhập số điểm của bạn";
                        //         }
                        //         return null;
                        //       },
                        //       onSaved: (value){
                        //         controller.registrationController.text = value!;
                        //       },
                        //     ),
                        //   ),
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(12),
                        //     color: Colors.white,
                        //   ),
                        // ),
                        Container(
                          width: double.infinity,
                          height: 50,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: DropdownButtonFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Vui lòng chọn trạng thái đăng ký"
                              ),
                              items: controller.registrationStatuses.map((String status) {
                                return DropdownMenuItem<String>(
                                  value: status,
                                  child: Text(status),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                controller.setSelectedRegistrationStatus(newValue);
                              },
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                        ),

                        const SizedBox(
                          height: 20,
                        ),
                        Text("List registed subjects", style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Colors.white
                        ),),
                       const SizedBox(
                          height: 10,
                        ),
                        Text("This student doesn't have any subject. Add one!!", style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(255, 255, 0, 0.4)
                        ),),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                            height: 50,
                            child: Obx(() {
                              final List<String> selectedSubjects = [];
                              for (int i = 0; i < controller.addStudentCtr.isSelected.length; i++) {
                                if (controller.addStudentCtr.isSelected[i]) {
                                  selectedSubjects.add(controller.studentCtrl.subjects[i]);
                                }
                              }
                              return GridView.builder(
                                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      crossAxisSpacing: 5,
                                      mainAxisExtent: 25,
                                      mainAxisSpacing: 35),
                                  itemCount: selectedSubjects.length,
                                  itemBuilder: (context, index) {
                                    return Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 60,
                                          width: 100,
                                          child: Center(
                                            child: Text(
                                              selectedSubjects[index],
                                              style: GoogleFonts.poppins(
                                                  color: ColorResources.BLUE_STUDENT,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 8),
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(32)),
                                        )
                                      ],
                                    );
                                  });
                            })),
                        Center(
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.white.withOpacity(0.5),
                                      spreadRadius: 2,
                                      offset: Offset(2, 4),
                                      blurRadius: 7
                                  )
                                ]
                            ),
                            child: Center(
                              child: IconButton(onPressed: (){
                                Get.dialog(
                                    barrierDismissible: false,
                                    Dialog(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(32),
                                      ),
                                      child:DialogSubject(),
                                    )
                                );
                              },
                                  icon: Icon(Icons.add, color: ColorResources.BLUE_STUDENT, size: 20,)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 76,
                              height: 29,
                              decoration: BoxDecoration(
                                color: ColorResources.YELLOW_ACCENT_STUDENT,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: TextButton(
                                onPressed: () async {

                                  final SubjectModel newSubject = SubjectModel(
                                    fullName: controller.fullNameController.text,
                                    subjectClass: controller.classController.text,
                                    // studentId:  controller.studentIdController.text,
                                    creditHours: int.parse(controller.creditController.text),
                                    semester: controller.termController.text,
                                    registrationStatus: controller.parseRegistrationStatus(controller.selectedRegistrationStatus),
                                    registeredCourses: controller.addStudentCtr.registeredCourses
                                  );
                                  controller.addSubject(newSubject);
                                },
                                child: Text(
                                  "Save",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10,
                                    color: ColorResources.BLUE_STUDENT,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 76,
                              height: 29,
                              child: InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                child: Center(
                                  child: Text(
                                    "Cancel",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            )

                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
