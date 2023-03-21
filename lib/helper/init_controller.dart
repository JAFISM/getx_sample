import 'package:get/get.dart';
import 'package:getx_sample/controllers/list_controller.dart';

import '../controllers/tap_controllers.dart';
Future<void> init()async{
  Get.lazyPut(()=>TapController());
  Get.lazyPut(()=>ListController());
}