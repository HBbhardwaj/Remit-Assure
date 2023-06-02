import 'package:freshproject/api/api_controller/base_controller.dart';
import 'package:get/get.dart';

class RestClientBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BaseController>(() => BaseController());
  }
}
