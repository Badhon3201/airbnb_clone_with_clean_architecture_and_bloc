import 'package:equatable/equatable.dart';

import 'category_entity.dart';

class CategoryListEntity extends Equatable {
  final List<CategoryEntity> category;
  final bool status;
  final String message;

  const CategoryListEntity({
    required this.category,
    required this.status,
    required this.message,
  });

  @override
  List<Object?> get props => [category];
}
