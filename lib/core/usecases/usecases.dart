import 'package:dartz/dartz.dart';
import 'package:meme_app/core/errors/failure.dart';

abstract class UseCases<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
