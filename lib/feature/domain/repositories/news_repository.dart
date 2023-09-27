import 'package:dartz/dartz.dart';
import '../../../core/error/failure.dart';
import '../entities/filter_data_response_model.dart';
import '../entities/house_and_cat_response_model.dart';

abstract class NewsRepository {

  Future<Either<Failure, HouseAndCatResponseModel>> houseAndCatList();

  Future<Either<Failure, FilterDataResponseModel>> filterData();
}