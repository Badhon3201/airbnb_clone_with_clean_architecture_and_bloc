import 'package:dartz/dartz.dart';
import '../../../core/error/failure.dart';
import '../../../core/use_case/use_case.dart';
import '../entities/house_and_cat_response_model.dart';
import '../repositories/news_repository.dart';

class GetHouseAndCategory implements UseCase<HouseAndCatResponseModel, NoParams> {
  final NewsRepository newsRepository;

  GetHouseAndCategory({required this.newsRepository});

  @override
  Future<Either<Failure, HouseAndCatResponseModel>> call(
      NoParams params) async {
    return await newsRepository.houseAndCatList();
  }
}
