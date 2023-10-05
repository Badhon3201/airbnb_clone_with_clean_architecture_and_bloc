//Add here code related to data_source

import '../model/category_response_model.dart';

abstract class RemoteDataSource {
  /// Calls the [baseUrl]  endpoint
  ///
  /// Throws a [httpError] for all error codes.
  Future<CategoryResponseModel> categoryList();
}
