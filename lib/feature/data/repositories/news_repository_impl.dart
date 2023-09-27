import 'package:clean_code_with_bloc/feature/domain/entities/filter_data_response_model.dart';
import 'package:clean_code_with_bloc/feature/domain/entities/house_and_cat_response_model.dart';
import 'package:dartz/dartz.dart';
import '../../../core/error/failure.dart';
import '../../../core/mixins/parser_mixin.dart';
import '../../../core/network/network_info.dart';
import '../../domain/repositories/news_repository.dart';
import '../data_sources/remote_data_source.dart';

class NewsRepositoryImpl with ParserMixin implements NewsRepository {
  final NewsRemoteDataSource newsRemoteDataSource;
  final NetworkInfo networkInfo;

  NewsRepositoryImpl(
      {required this.newsRemoteDataSource, required this.networkInfo});

  @override
  Future<Either<Failure, FilterDataResponseModel>> filterData() async {
    var isConnected = await networkInfo.isConnected;
    if (isConnected) {
      return parse(newsRemoteDataSource.filterData());
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, HouseAndCatResponseModel>> houseAndCatList() async {
    var isConnected = await networkInfo.isConnected;
    if (isConnected) {
      return parse(newsRemoteDataSource.houseAndCatList());
    } else {
      return Left(NetworkFailure());
    }
  }
}
