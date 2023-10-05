import 'package:get_it/get_it.dart';

import 'core/network/network_info.dart';
import 'core/utils/urls.dart';
import 'feature/data/data_source/data_source.dart';
import 'feature/data/data_source/data_source_impl.dart';
import 'feature/data/repositories/repositories.dart';
import 'feature/domain/repositories/repositories.dart';
import 'feature/domain/usecase/usecase.dart';
import 'feature/presentation/bloc/category_bloc.dart';

final injector = GetIt.instance;

Future<void> init() async {
  // Data Source
  injector.registerLazySingleton<RemoteDataSource>(
          () => RemoteDataSourceImpl(constantConfig: injector()));

  // Repository
  injector.registerLazySingleton<CatRepository>(() =>
      CatRepositoryImpl(remoteDataSource: injector(), networkInfo: injector()));

  //Bloc
  injector.registerLazySingleton<CategoryBloc>(
          () => CategoryBloc(shipmentListUseCase: injector()));

  //UseCase
  injector.registerLazySingleton<CategoryUseCase>(
          () => CategoryUseCase(catRepository: injector()));

  /**
   * ! Core
   */
  injector.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl());

  injector.registerLazySingleton<Urls>(() => Urls());
}
