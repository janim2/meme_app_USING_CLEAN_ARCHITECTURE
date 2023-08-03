import 'package:dartz/dartz.dart';
import 'package:meme_app/core/errors/failure.dart';
import 'package:meme_app/data/datasources/meme_datasources.dart';
import 'package:meme_app/domain/repositories/meme_repositories.dart';

import '../../domain/entities/memes.dart';

class MemeRepositoriesImpl implements MemeRepositories {
  const MemeRepositoriesImpl({required this.memeDataSources});
  final MemeDataSources memeDataSources;

  @override
  Future<Either<Failure, List<Memes>>> getMemes() {
    return memeDataSources.getMemes();
  }
}
