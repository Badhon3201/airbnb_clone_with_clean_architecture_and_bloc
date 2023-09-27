import 'package:dartz/dartz.dart';
import '../error/failure.dart';
import '../exceptions/api_exceptions.dart';
import '../exceptions/data_exceptions.dart';

mixin ParserMixin {
  Future<Either<Failure, T>> parse<T>(Future<T> func) async {
    try {
      var response = await func;
      return Right(response);
    } on ApiException catch (e) {
      return Left(Failure.api(e));
    } on DatabaseException catch (e) {
      return Left(Failure.database(e));
    } catch (e) {
      return Left(Failure.unknown());
    }
  }
}
