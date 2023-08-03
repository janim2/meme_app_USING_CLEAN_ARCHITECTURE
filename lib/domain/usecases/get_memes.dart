import 'package:dartz/dartz.dart';
import 'package:meme_app/core/errors/failure.dart';
import 'package:meme_app/core/usecases/empty_params.dart';
import 'package:meme_app/domain/repositories/meme_repositories.dart';

import '../../core/usecases/usecases.dart';
import '../entities/memes.dart';

class GetMemes implements UseCases<List<Memes>, NoParams> {
  const GetMemes({required this.memeRepositories});

  final MemeRepositories memeRepositories;
  @override
  Future<Either<Failure, List<Memes>>> call(NoParams params) {
    return memeRepositories.getMemes();
  }
}
