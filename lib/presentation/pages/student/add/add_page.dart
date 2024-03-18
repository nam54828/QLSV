import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:template/presentation/pages/student/add/add_controller.dart';
import 'package:template/presentation/pages/subject/subject_page.dart';
import 'package:template/presentation/pages/subject/widgets/dialog_subject.dart';

import '../../../../core/utils/color_resources.dart';
import '../../../../data/model/student/student_model.dart';

class AddStudentPage extends GetView<AddController>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: _widgetBody(),
    );
  }
  Widget _widgetBody(){
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 100),
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
                    margin: const EdgeInsets.only(top: 10),
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
                margin: const EdgeInsets.only(top: 115, left: 190),
                child: Text("Add student", style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: ColorResources.BLUE_ACCENT_STUDENT
                ) ,),
              ),
              Container(
                margin: EdgeInsets.only(top: 125),
                child: Padding(
                  padding: const EdgeInsets.all(23.0),
                  child: Form(
                    key: controller.formKey,
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
                          height: 10,
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
                                        controller: controller.idsvController,
                                        onSaved: (value){
                                          controller.idsvController.text = value!;
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
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 7,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text("Email", style: GoogleFonts.poppins(
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
                                            hintText: "dnam291002@gmail.com",
                                            hintStyle: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.grey
                                                )
                                            ),
                                            border: InputBorder.none
                                        ),
                                        controller: controller.emailController,
                                        onSaved: (value){
                                          controller.emailController.text = value!;
                                        },
                                        validator: (value){
                                          if(value!.isEmpty){
                                            return "Vui lòng nhập email của bạn!";
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
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text("Date of Birth", style: GoogleFonts.poppins(
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
                                        controller: controller.dateOfBirthController,
                                        onSaved: (value){
                                          controller.dateOfBirthController.text = value!;
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
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 7,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text("Address", style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12,
                                        color: Colors.white
                                    ),
                                      textAlign: TextAlign.start,
                                    ),
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
                                            hintText: "103 Hoài Thanh",
                                            hintStyle: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.grey
                                                )
                                            ),
                                            border: InputBorder.none
                                        ),
                                        controller: controller.addressController,
                                        validator: (value){
                                          if(value!.isEmpty){
                                            return "Vui lòng nhập địa chỉ của bạn";
                                          }
                                          return null;
                                        },
                                        onSaved: (value){
                                          controller.addressController.text = value!;
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
                            SizedBox(width: 20),
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text("Phone number", style: GoogleFonts.poppins(
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
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            hintText: "0123456789",
                                            hintStyle: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.grey
                                                )
                                            ),
                                            border: InputBorder.none
                                        ),
                                        controller: controller.phoneController,
                                        validator: (value){
                                          if(value!.isEmpty){
                                            return "Vui lòng nhập số điện thoại!";
                                          }
                                          return null;
                                        },
                                        onSaved: (value){
                                          controller.phoneController.text = value!;
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
                          ],
                        ),

                        SizedBox(
                          height: 10,
                        ),
                        Text("Average mark", style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Colors.white
                        ),),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: double.infinity,
                          height: 50,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  hintText: "3.91",
                                  hintStyle: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey
                                      )
                                  ),
                                  border: InputBorder.none
                              ),
                              controller: controller.averageController,
                              validator: (value){
                                if(value!.isEmpty){
                                  return "Vui lòng nhập số điểm của bạn";
                                }
                                return null;
                              },
                              onSaved: (value){
                                controller.averageController.text = value!;
                              },
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("List subjects", style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Colors.white
                        ),),
                        SizedBox(
                          height: 10,
                        ),
                        Text("This student doesn’t have any classes yet. Click here to add new subject!", style: GoogleFonts.poppins(
                            fontSize: 8,
                            fontWeight: FontWeight.w700,
                            color: Colors.white
                        ),),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            height: 50,
                            child: SubjectPage()),
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
                                        borderRadius: BorderRadius.circular(32), // Đặt bán kính bo tròn cho Dialog
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
                                  final Student newStudent = Student(
                                    contactInfo: ContactInfo(
                                      // id: studentCtrl.idsvController.text,
                                      address: controller.addressController.text,
                                      email: controller.emailController.text,
                                      phoneNumber: controller.phoneController.text,
                                    ),
                                    registeredCourses:controller.registeredCourses,
                                    averageScore: double.parse(controller.averageController.text),
                                    dateOfBirth: int.parse(controller.averageController.text),
                                    classField: controller.classController.text,
                                    fullName: controller.fullNameController.text,
                                  );
                                  controller.addStudent(newStudent);
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