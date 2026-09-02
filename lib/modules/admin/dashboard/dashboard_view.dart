import 'package:demo_access_refresh_token_app/modules/admin/dashboard/dashboard_controller.dart';
import 'package:demo_access_refresh_token_app/routes/app_route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/custom_appbar_widget.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppbarWidget(title: "dashboard".tr, actions: []),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: GridView.builder(
            itemCount: controller.menusList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              var menu = controller.menusList[index];
              return GestureDetector(
                onTap: (){
                  Get.toNamed(menu.routeName??AppRouteName.adminDashboard);
                },
                child: Container(
                  decoration: BoxDecoration(color: Colors.cyan),
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      Get.locale?.languageCode == "km"
                          ? "${menu.nameKm}"
                          : "${menu.name}",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      );
    });
  }
}
