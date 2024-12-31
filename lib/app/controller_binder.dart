import 'package:get/get.dart';
import 'package:modules_of_ostad/features/common/ui/controllers/main_bottom_nav_controller.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(MainBottomNavController());
  }
}
