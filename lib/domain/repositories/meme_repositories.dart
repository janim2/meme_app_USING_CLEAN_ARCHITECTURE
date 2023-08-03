import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../entities/memes.dart';

abstract class MemeRepositories {
  Future<Either<Failure, List<Memes>>> getMemes();
}
