//Add here code related to usecase

import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../enitites/category_list_entity.dart';
import '../repositories/repositories.dart';

class CategoryUseCase {
  final CatRepository catRepository;

  CategoryUseCase({required this.catRepository});

  Future<Either<Failure, CategoryListEntity>> call() async {
    return await catRepository.categoryList();
  }
}
