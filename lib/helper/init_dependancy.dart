import 'package:get/get.dart';

import '../controllers/list_controller.dart';
import '../controllers/tap_controllers.dart';

class InitDep extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(()=>TapController());
    Get.lazyPut(()=>ListController());
  }

}