import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:meme_app/data/datasources/meme_datasources.dart';
import 'package:meme_app/data/repositories/meme_repositories.dart';

import '../../domain/usecases/get_memes.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  getIt.registerSingleton(Dio());
  getIt.registerSingleton(MemeDataSourceImpl(dio: getIt<Dio>()));
  getIt.registerSingleton(
      MemeRepositoriesImpl(memeDataSources: getIt<MemeDataSourceImpl>()));
  getIt.registerSingleton(
      GetMemes(memeRepositories: getIt<MemeRepositoriesImpl>()));
}
