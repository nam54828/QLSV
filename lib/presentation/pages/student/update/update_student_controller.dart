

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:template/presentation/pages/student/add/add_controller.dart';
import 'package:template/presentation/pages/subject/subject_controller.dart';

import '../../../../data/model/student/student_model.dart';
import '../../../../data/repositories/student_repository.dart';
import '../student_controller.dart';

class UpdateStudentController extends GetxController{

   late  Student studentModel ;

  final StudentRepository _studentRepository = GetIt.I.get<StudentRepository>();

  final studentCtrl = Get.find<StudentController>();
  final addStudentCtrl = Get.find<AddController>();
  late final subjectCtrl = Get.find<SubjectController>();



  final formKey = GlobalKey<FormState>();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController classController = TextEditingController();
  final TextEditingController idsvController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController dateOfBirthController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController averageController = TextEditingController();


  Future<void> updateStudent(Student student)async {

    await _studentRepository.updateStudent(
        student: student,
        idStudent: studentModel.id ?? '',
        onSuccess: (){
          print("Đã chỉnh sửa thông tin student");
          studentCtrl.getAllStudents();
          Get.back();
        },
        onError: (error){
          print("Lỗi khi chỉnh sửa thông tin $error");
        });
  }

   @override
   void onInit() {
     // TODO: implement onInit
     studentModel = Get.arguments as Student;
     fullNameController.text = studentModel.fullName ?? '';
     classController.text = studentModel.classField ?? '';
     emailController.text = studentModel.contactInfo.email ?? '';
     dateOfBirthController.text = studentModel.dateOfBirth.toString() ?? '0';
     addressController.text = studentModel.contactInfo.address ?? '';
     phoneController.text = studentModel.contactInfo.phoneNumber ?? '';
     averageController.text = studentModel.averageScore.toString() ?? '';
     super.onInit();
   }


  @override
  void onClose() {
    // TODO: implement onClose
    fullNameController.dispose();
    classController.dispose();
    idsvController.dispose();
    emailController.dispose();
    dateOfBirthController.dispose();
    addressController.dispose();
    phoneController.dispose();
    averageController.dispose();
    super.onClose();
  }
}