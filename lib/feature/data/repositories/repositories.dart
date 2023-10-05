//Add here code related to repositories

import 'package:dartz/dartz.dart';
import '../../../../core/network/network_info.dart';
import '../../../core/error/failure.dart';
import '../../../core/mixins/parser_mixin.dart';
import '../../domain/enitites/category_list_entity.dart';
import '../../domain/repositories/repositories.dart';
import '../data_source/data_source.dart';

class CatRepositoryImpl with ParserMixin implements CatRepository {
  final RemoteDataSource remoteDataSource;

  final NetworkInfo networkInfo;

  CatRepositoryImpl(
      {required this.remoteDataSource, required this.networkInfo});

  @override
  Future<Either<Failure, CategoryListEntity>> categoryList() async {
    var isConnected = await networkInfo.isConnected;
    if (isConnected) {
      return parse(remoteDataSource.categoryList());
    } else {
      return Left(NetworkFailure());
    }
  }
}
