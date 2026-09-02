import 'package:demo_access_refresh_token_app/core/services/api_service.dart';
import 'package:demo_access_refresh_token_app/core/services/api_service_impl.dart';
import 'package:get/get.dart';


class InitialBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ApiService>(()=> ApiServiceImpl(), fenix: true);
  }

}