import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:template/data/model/student/student_model.dart';
import 'package:template/presentation/pages/student/update/update_student_controller.dart';
import 'package:template/presentation/pages/subject/subject_page.dart';

import '../../../../core/utils/color_resources.dart';
import '../../subject/widgets/dialog_subject.dart';

class UpdateStudentPage extends GetView<UpdateStudentController>{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 800,
                  margin: EdgeInsets.only(top: 150),
                  decoration: const BoxDecoration(
                      color: ColorResources.BLUE_ADD_STUDENT,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(46), topRight: Radius.circular(46))
                  ),
                ),
                Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 100),
                          child: Row(
                            children: [
                              Container(
                                height: 35,
                                width: 310,
                                margin: EdgeInsets.only(left: 20),
                                child: TextFormField(
                                  textAlign: TextAlign.right,
                                  decoration: InputDecoration(
                                      hintText: "Enter keyword to find out...",
                                      hintStyle: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      border: InputBorder.none,
                                      suffixIcon: Icon(Icons.search, color: ColorResources.GREY_STUDENT,)
                                  ),

                                ),
                                decoration: BoxDecoration(
                                    color: ColorResources.GREY_STUDENT,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                width: 35,
                                height: 35,
                                child: IconButton(onPressed: (){},
                                    icon: Icon(Icons.list, color: ColorResources.YELLOW_STUDENT)),
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
                  ],
                ),
                Container(
                  margin: EdgeInsets.only( left: 60, top: 170),
                  child: Text("Edit Student Information", style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: ColorResources.BLUE_ACCENT_STUDENT
                  ) ,),
                ),
                Container(
                  margin: EdgeInsets.only(top: 180),
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
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: double.infinity,
                            height: 50,
                            child: Padding(
                              padding: EdgeInsets.only(left: 15),
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
                                    Text("Class", style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12,
                                        color: Colors.white
                                    ),
                                      textAlign: TextAlign.start,),
                                    const SizedBox(
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
                                    const SizedBox(
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
                                    Text("Email", style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12,
                                        color: Colors.white
                                    ),
                                      textAlign: TextAlign.start,),
                                    const SizedBox(
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
                                          controller:  controller.emailController,
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
                                    const SizedBox(
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
                                              border: InputBorder.none
                                          ),
                                          controller: controller.dateOfBirthController,
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
                                    const SizedBox(
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
                              const SizedBox(width: 20),
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
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      height: 50,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 15),
                                        child: TextFormField(
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

                          const SizedBox(
                            height: 10,
                          ),
                          Text("Average mark", style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
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
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
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
                          const SizedBox(
                            height: 10,
                          ),
                          // Container(
                          //   height: 60,
                          //   child: GridView.builder(
                          //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          //           crossAxisCount: 3,
                          //           crossAxisSpacing: 5,
                          //           mainAxisExtent: 25,
                          //           mainAxisSpacing: 35),
                          //       itemCount: controller.studentModel.registeredCourses.length,
                          //       itemBuilder: (context, index) {
                          //         return Row(
                          //           crossAxisAlignment: CrossAxisAlignment.center,
                          //           children: [
                          //             Container(
                          //               height: 60,
                          //               width: 100,
                          //               child: Center(
                          //                 child: Text(
                          //                   controller.studentModel.registeredCourses[index],
                          //                   style: GoogleFonts.poppins(
                          //                       color: ColorResources.BLUE_STUDENT,
                          //                       fontWeight: FontWeight.w700,
                          //                       fontSize: 8),
                          //                 ),
                          //               ),
                          //               decoration: BoxDecoration(
                          //                   color: Colors.white,
                          //                   borderRadius: BorderRadius.circular(32)),
                          //             )
                          //           ],
                          //         );
                          //       }),
                          // ),
                          // Container(
                          //   height: 50,
                          //   child: SubjectPage(),
                          // ),
                          Container(
                            height: 60,
                            child: GridView.builder(
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 5,
                                mainAxisExtent: 25,
                                mainAxisSpacing: 35,
                              ),
                              itemCount: controller.studentModel.registeredCourses.length,
                              itemBuilder: (context, index) {
                                final course = controller.studentModel.registeredCourses[index];
                                final isSelected = controller.subjectCtrl.isSelected[index];

                                return GestureDetector(
                                  onTap: () {
                                    if (isSelected) {
                                      controller.subjectCtrl.updateSelection(index, false);
                                    } else {
                                      controller.subjectCtrl.updateSelection(index, true);
                                    }
                                  },
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 60,
                                        width: 100,
                                        child: Center(
                                          child: Text(
                                            course,
                                            style: GoogleFonts.poppins(
                                              color: isSelected ? ColorResources.YELLOW_STUDENT : ColorResources.BLUE_STUDENT,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 8,
                                            ),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: isSelected ? ColorResources.BLUE_STUDENT : Colors.white,
                                          borderRadius: BorderRadius.circular(32),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
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
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: 76,
                                height: 29,
                                child: Center(
                                  child: InkWell(
                                    onTap: (){
                                      String fullName = controller.fullNameController.text;
                                      String classField = controller.classController.text;
                                      String idStudent = controller.idsvController.text;
                                      String email = controller.emailController.text;
                                      String dateOfBirth = controller.dateOfBirthController.text;
                                      String address = controller.addressController.text;
                                      String phoneNumber = controller.phoneController.text;
                                      String averageScore = controller.averageController.text;

                                      Student newStudent = Student(
                                        fullName: fullName,
                                        classField: classField,
                                        contactInfo: ContactInfo(email: email, phoneNumber: phoneNumber, address: address),
                                        dateOfBirth: int.parse(dateOfBirth),
                                        averageScore: double.parse(averageScore),
                                        registeredCourses: controller.addStudentCtrl.registeredCourses,
                                      );
                                      controller.updateStudent(newStudent);
                                    },
                                    child: Text("Save", style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 10,
                                        color: ColorResources.BLUE_STUDENT
                                    ),
                                      textAlign: TextAlign.center,),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    color: ColorResources.YELLOW_ACCENT_STUDENT,
                                    borderRadius: BorderRadius.circular(15)
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                width: 76,
                                height: 29,
                                child: Center(
                                    child: GestureDetector(
                                      onTap: (){
                                        Get.back();
                                      },
                                      child: Text("Cancel", style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 10,
                                          color: Colors.white
                                      ),
                                        textAlign: TextAlign.center,),
                                    )
                                ),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(15)
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
      ),
    );
  }
}