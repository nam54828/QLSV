import 'package:get/get.dart';
import 'package:template/presentation/pages/search/search_binding.dart';
import 'package:template/presentation/pages/search/search_page.dart';
import 'package:template/presentation/pages/search/search_product_provider/search_product_provider_binding.dart';
import 'package:template/presentation/pages/search/search_product_provider/search_product_provider_page.dart';
import 'package:template/presentation/pages/search/search_provider/search_provider_binding.dart';
import 'package:template/presentation/pages/search/search_provider/search_provider_page.dart';
import 'package:template/presentation/pages/student/update/update_student_binding.dart';
import 'package:template/presentation/pages/student/update/update_student_page.dart';

mixin AppRoute {
  static const String NOTIFICATION = '/notification';
  static const String DETAIL_NOTIFICATION = '/detail_notification';
  static const String SEARCH = '/search';
  static const String SEARCH_PRODUCT_PROVIDER = '/search_product_provider';
  static const String PERSONAL_INFORMATION = '/personal_information';
  static const String SEARCH_ADDRESS = '/search_address';
  static const String VOUCHER = '/voucher';
  static const String VOUCHER_DETAIL = '/voucher_detail';
  static const String DETAIL_PRODUCT = '/detail_product';
  static const String DETAIL_PROVIDER= '/detail_provider';
  static const String COMMENT_PRODUCT = '/comment_product';
  static const String COMMENT_PROVIDER = '/comment_provider';
  static const String PAYMENT = '/payment';
  static const String ADDRESS = '/address';
  static const String ADD_ADDRESS = '/add_address';
  static const String EDIT_ADDRESS = '/edit_address';
  static const String PAYMENT_CONFIRM = '/payment_confirm';
  static const String PAYMENT_METHOD = '/payment_method';
  static const String OTHER_PAYMENT = '/other_payment';
  static const String VISA_PAYMENT = '/visa_payment';
  static const String SEARCH_PROVIDER = '/search_provider';
  static const String VOUCHER_CART = '/voucher_cart';
  static const String MY_ORDER = '/my_order';
  static const String DETAIL_ORDER = '/detail_order';
  static const String LEADING_PROVIDER = '/leading_provider';
  static const String REVIEW = '/review';
  static const String PERSONAL_ACCOUNT = '/personal_account';
  static const String RETURN_ORDER = '/return_order';
  static const String POINT = '/point';
  static const String SEARCH_IMAGE = '/search_image';
  static const String PRODUCT_HOT = '/product_hot';
  static const String EDIT_STUDENT = '/edit_student';

  static List<GetPage> listPage = [
    GetPage(
      name: SEARCH,
      page: () => SearchPage(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: SEARCH_PROVIDER,
      page: () => const SearchProviderPage(),
      binding: SearchProviderBinding(),
    ),

    GetPage(
      name: SEARCH_PRODUCT_PROVIDER,
      page: () => const SearchProductProviderPage(),
      binding: SearchProductProviderBinding(),
    ),
    GetPage(
      name: EDIT_STUDENT,
      page: () =>  UpdateStudentPage(),
      binding:  UpdateStudentBinding(),
    ),
  ];
}
