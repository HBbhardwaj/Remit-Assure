
import 'package:freshproject/services/rest_client.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class BaseController extends GetxController {
  RestClient? restClient;

  @override
  onInit() {
    restClient = RestClient();
    super.onInit();

  }

}