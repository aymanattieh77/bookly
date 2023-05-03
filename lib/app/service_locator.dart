import 'package:bookly/data/date_source/remote_data_source.dart';
import 'package:bookly/data/network/api_service.dart';
import 'package:bookly/data/network/dio_factory.dart';
import 'package:bookly/data/network/network_info.dart';
import 'package:bookly/data/repository/repository_impl.dart';
import 'package:bookly/domain/repository/repository.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupAppService() {
  getIt.registerLazySingleton<DioFactory>(() => DioFactory());

  final dio = getIt<DioFactory>().dio;
  getIt.registerLazySingleton<APIService>(() => APIService(dio));

  getIt.registerLazySingleton<RemoteDateSource>(
      () => RemoteDataSourceImpl(getIt()));
  getIt.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl());
  getIt.registerLazySingleton<Repository>(
      () => RepositoryImpl(getIt(), getIt()));
}
