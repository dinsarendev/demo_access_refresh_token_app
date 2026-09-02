import 'package:demo_access_refresh_token_app/routes/app_route_name.dart';

class AdminMenu {
  int? id;
  String? name;
  String? nameKm;
  String? routeName;

  AdminMenu({this.nameKm, this.routeName, this.id, this.name});
  static List<AdminMenu> getAllAdminMenus() {
    return [
      AdminMenu(
        id: 1,
        nameKm: "ទំព័រដើម",
        name: "Home",
        routeName: AppRouteName.home,
      ),
      AdminMenu(
        id: 2,
        nameKm: "ប្រភេទ",
        name: "Category",
        routeName: AppRouteName.home,
      ),
      AdminMenu(
        id: 3,
        nameKm: "អត្ថបទ",
        name: "Article",
        routeName: AppRouteName.home,
      ),
      AdminMenu(
        id: 4,
        nameKm: "ប្រកាស",
        name: "Posts",
        routeName: AppRouteName.adminPost,
      ),
    ];
  }
}
