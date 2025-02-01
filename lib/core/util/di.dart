import 'package:bookly_app/core/util/api_services.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:bookly_app/features/home/data/repo/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.instance;

void appDI() {
  final dio = Dio();
  di.registerSingleton<ApiServices>(
    ApiServices(dio: dio),
  );
  di.registerSingleton<HomeRepo>(
    HomeRepoImpl(
      apiServices: di.get<ApiServices>(),
    ),
  );
}
