import 'dart:convert';
import '../../domain/enitites/category_list_entity.dart';
import 'category_model.dart';

CategoryResponseModel categoryResponseModelFromJson(String str) =>
    CategoryResponseModel.fromJson(json.decode(str));

class CategoryResponseModel extends CategoryListEntity {
  const CategoryResponseModel({
    required bool status,
    required String message,
    required List<Category> category,
  }) : super(status: status, message: message, category: category);

  factory CategoryResponseModel.fromJson(Map<String, dynamic> json) =>
      CategoryResponseModel(
        status: json["status"],
        message: json["message"],
        category: json["category"] == null
            ? []
            : List<Category>.from(
                json["category"]!.map((x) => Category.fromJson(x))),
      );
}
