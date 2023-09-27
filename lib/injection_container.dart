import 'package:get_it/get_it.dart';

import 'core/network/network_info.dart';
import 'feature/data/data_sources/remote_data_source.dart';
import 'feature/data/repositories/news_repository_impl.dart';
import 'feature/domain/repositories/news_repository.dart';
import 'feature/domain/usecases/house_and_cat.dart';

final sl = GetIt.instance;

Future<void> init() async {

  // Use Case
  sl.registerLazySingleton(() => GetHouseAndCategory(newsRepository: sl()));

  // Repository
  sl.registerLazySingleton<NewsRepository>(() => NewsRepositoryImpl(newsRemoteDataSource: sl(), networkInfo: sl()));

  // Data Source
  sl.registerLazySingleton<NewsRemoteDataSource>(() => NewsRemoteDataSourceImpl( constantConfig: sl()));

  /**
   * ! Core
   */
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
}
