import 'package:bookly/data/date_source/remote_data_source.dart';
import 'package:bookly/data/network/api_service.dart';
import 'package:bookly/data/network/dio_factory.dart';
import 'package:bookly/data/network/network_info.dart';
import 'package:bookly/data/repository/repository_impl.dart';
import 'package:bookly/domain/repository/repository.dart';
import 'package:bookly/presentation/home/viewmodel/feature_books_cubit/feature_books_cubit_cubit.dart';
import 'package:bookly/presentation/home/viewmodel/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/presentation/home/viewmodel/similer_books_cubit/similer_books_cubit.dart';
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

void setupAppCubit() {
  if (!GetIt.I.isRegistered<FeatureBooksCubitCubit>()) {
    getIt.registerFactory<FeatureBooksCubitCubit>(
        () => FeatureBooksCubitCubit(getIt<Repository>()));
  }
  if (!GetIt.I.isRegistered<NewestBooksCubit>()) {
    getIt.registerFactory<NewestBooksCubit>(() => NewestBooksCubit(getIt()));
  }
}

detailsBooksCubit() {
  if (!GetIt.I.isRegistered<SimilerBooksCubit>()) {
    getIt.registerFactory<SimilerBooksCubit>(() => SimilerBooksCubit(getIt()));
  }
}
