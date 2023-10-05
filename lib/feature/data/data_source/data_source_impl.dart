//Add here code related to data_source
import 'package:clean_code_with_bloc/core/extensions/http_streamed_response_parser.dart';

import '../../../../core/exceptions/api_exceptions.dart';
import '../../../../core/utils/urls.dart';
import 'package:http/http.dart' as http;
import '../model/category_response_model.dart';
import 'data_source.dart';

class RemoteDataSourceImpl implements RemoteDataSource {
  final Urls constantConfig;

  RemoteDataSourceImpl({
    required this.constantConfig,
  });

  @override
  Future<CategoryResponseModel> categoryList() async {
    var client = http.Client();
    var response = await client
        .get(Uri.parse(constantConfig.baseUrl + constantConfig.catUrl));

    var result = await response.parse(decoder: categoryResponseModelFromJson);

    if (result.status == true) {
      return result;
    } else {
      throw ApiDataException(
        code: response.statusCode,
        message: result.message,
      );
    }
  }
}
