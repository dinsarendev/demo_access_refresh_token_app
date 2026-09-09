import 'dart:convert';

import 'package:demo_access_refresh_token_app/constants/constant_uri.dart';
import 'package:demo_access_refresh_token_app/core/services/api_service.dart';
import 'package:demo_access_refresh_token_app/models/ApiBaseResponse.dart';
import 'package:demo_access_refresh_token_app/modules/admin/category/models/Category.dart';
import 'package:demo_access_refresh_token_app/modules/admin/category/models/Category_request.dart';
import 'package:demo_access_refresh_token_app/modules/admin/repository/category_repository.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  final ApiService apiService;
  CategoryRepositoryImpl({required this.apiService});
  
  @override
  Future<String> createCategory(CategoryRequest request) async {
    ApiBaseResponse<String> apiBaseResponse = new ApiBaseResponse<String>();
    var response = await apiService.postApi(ConstantUri.baseUri, body: jsonEncode(request.toJson()));
    if(response != null){
      apiBaseResponse =  ApiBaseResponse.fromJson(response, (data)=> data as String);
    }
    return apiBaseResponse.data ?? "";
  }

  @override
  Future<String> deleteCategory(String id) {
    // TODO: implement deleteCategory
    throw UnimplementedError();
  }

  @override
  Future<List<Category>> getAllCategories({String? limit, String? page, String? status}) {
    // TODO: implement getAllCategories
    throw UnimplementedError();
  }

  @override
  Future<Category> getCategoryById(String id) {
    // TODO: implement getCategoryById
    throw UnimplementedError();
  }

  @override
  Future<String> updateCategory(CategoryRequest request) {
    // TODO: implement updateCategory
    throw UnimplementedError();
  }
}
