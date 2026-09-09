import 'package:demo_access_refresh_token_app/modules/admin/category/models/Category.dart';
import 'package:demo_access_refresh_token_app/modules/admin/category/models/Category_request.dart';

abstract class CategoryRepository {
  Future<List<Category>> getAllCategories({
    String? limit,
    String? page,
    String? status,
  });
  Future<Category> getCategoryById(String id);
  Future<String> createCategory(CategoryRequest request);
  Future<String> updateCategory(CategoryRequest request);
  Future<String> deleteCategory(String id);
}
