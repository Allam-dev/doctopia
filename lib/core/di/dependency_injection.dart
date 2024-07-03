import 'package:dio/dio.dart';
import 'package:doctopia/core/network/api_services.dart';
import 'package:doctopia/core/network/dio_factory.dart';
import 'package:doctopia/features/login/data/repo/login_repo.dart';
import 'package:doctopia/features/login/logic/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> initGetIt() async {
  // dio & ApiServices
  getIt.registerLazySingleton<ApiServices>(() => ApiServices(DioFactory.getDio()));

  // repositories
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt<ApiServices>()));


  // cubits
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<LoginRepo>()));
}
