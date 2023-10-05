//Add here code related to repositories

import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../enitites/category_list_entity.dart';

abstract class CatRepository {
  Future<Either<Failure, CategoryListEntity>> categoryList();
}
