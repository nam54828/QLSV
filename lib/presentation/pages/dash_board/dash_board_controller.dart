
import 'package:get/get.dart';
import 'package:template/core/export/core_export.dart';


class DashBoardController extends GetxController {
  RxInt currentIndex = 0.obs;

  RxBool isLogged = sl<SharedPreferenceHelper>().isLogged.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void onChangeDashboardPage({
    required int index,
  }) {
    if (index == currentIndex.value) return;
    currentIndex.value = index;
  }
}
