import 'package:demo_access_refresh_token_app/modules/admin/dashboard/dashboard_controller.dart';
import 'package:get/get.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(()=> DashboardController());
  }

}