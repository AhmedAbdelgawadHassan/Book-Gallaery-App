import 'package:bookly/Core/Utils/Api_Service.dart';
import 'package:bookly/Features/home/Data/Repo/Home_Repo_Implementation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance; // GetIt is a service locator package
void setupServiceLocator() {
   getIt.registerSingleton<ApiService>(ApiService(Dio()));    // api service singleton
  getIt.registerSingleton<HomeRepoImplementation>(
    HomeRepoImplementation(getIt<ApiService>()));    // home repo implementation use api service singleton
}
