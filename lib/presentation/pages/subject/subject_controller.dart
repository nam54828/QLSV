import 'package:get/get.dart';

class SubjectController extends GetxController {
  final subjects = ['Lịch sử Đảng', 'Giải tích 2', 'Kỹ thuật Lập trình', 'Đại số tuyến tính', 'Vật lý đại cương'].obs;
  final isSelected = List<bool>.filled(5, false).obs;

  void updateSelection(int index, bool value) {
    isSelected[index] = value;
  }

}