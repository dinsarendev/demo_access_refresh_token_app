import 'package:demo_access_refresh_token_app/modules/admin/dashboard/models/admin_menu.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController{
  var menusList = <AdminMenu>[].obs;


  @override
  void onInit() {
    menusList.value = AdminMenu.getAllAdminMenus();
    super.onInit();
  }
}