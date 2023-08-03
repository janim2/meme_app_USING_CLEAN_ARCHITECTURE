import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:meme_app/data/models/memes_model.dart';

import '../../core/errors/failure.dart';
import '../../domain/entities/memes.dart';

abstract class MemeDataSources {
  Future<Either<Failure, List<Memes>>> getMemes();
}

class MemeDataSourceImpl implements MemeDataSources {
  // final dio = Dio();
  MemeDataSourceImpl({
    required this.dio,
  });

  final Dio dio;
  @override
  Future<Either<Failure, List<Memes>>> getMemes() async {
    final response = await dio.get("https://api.imgflip.com/get_memes");
    debugPrint(response.data);

    // return const Left(Failure());

    if (response.statusCode == 200) {
      return Right((response.data['data']['memes'] as List<dynamic>)
          .map((e) => MemesModel.fromJson(e as Map<String, dynamic>))
          .toList());
    } else {
      return const Left(Failure(message: "Server Failure"));
    }
  }
}
