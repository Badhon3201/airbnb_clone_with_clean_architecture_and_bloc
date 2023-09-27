import 'package:clean_code_with_bloc/core/extensions/http_streamed_response_parser.dart';
import 'package:http/http.dart' as http;
import '../../../core/exceptions/api_exceptions.dart';
import '../../../core/utils/urls.dart';
import '../../domain/entities/filter_data_response_model.dart';
import '../../domain/entities/house_and_cat_response_model.dart';

abstract class NewsRemoteDataSource {
  /// Calls the [baseUrl] house and category endpoint
  ///
  /// Throws a [httpError] for all error codes.
  Future<HouseAndCatResponseModel> houseAndCatList();

  /// Calls the [baseUrl] filter endpoint
  ///
  /// Throws a [httpError] for all error codes.
  Future<FilterDataResponseModel> filterData();
}

class NewsRemoteDataSourceImpl implements NewsRemoteDataSource {
  final Urls constantConfig;

  NewsRemoteDataSourceImpl({
    required this.constantConfig,
  });

  @override
  Future<HouseAndCatResponseModel> houseAndCatList() async {
    var client = http.Client();
    var response = await client
        .get(Uri.parse('${constantConfig.baseUrl}/v2/top-headlines'));

    var result =
        await response.parse(decoder: houseAndCatResponseModelFromJson);

    if (result.status == true) {
      return result;
    } else {
      throw ApiDataException(
          code: response.statusCode, message: result.message);
    }
  }

  @override
  Future<FilterDataResponseModel> filterData() async {
    var client = http.Client();
    var response = await client
        .get(Uri.parse('${constantConfig.baseUrl}/v2/top-headlines'));

    var result = await response.parse(decoder: filterDataResponseModelFromJson);

    if (result.status == true) {
      return result;
    } else {
      throw ApiDataException(
          code: response.statusCode, message: result.message);
    }
  }
}
