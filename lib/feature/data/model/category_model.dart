import '../../domain/enitites/category_entity.dart';

class Category extends CategoryEntity {
  const Category({
    required super.id,
    required super.name,
    required super.icon,
  });

  Category copyWith({
    final int? id,
    final String? name,
    final String? icon,
  }) {
    return Category(
      id: id ?? this.id,
      name: name ?? this.name,
      icon: icon ?? this.icon,
    );
  }

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        icon: json["icon"],
      );
}
