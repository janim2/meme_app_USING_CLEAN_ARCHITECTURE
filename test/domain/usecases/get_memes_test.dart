import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meme_app/core/usecases/empty_params.dart';
import 'package:meme_app/domain/repositories/meme_repositories.dart';
import 'package:meme_app/domain/usecases/get_memes.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../mocks/migrated_mocks.dart';
import 'get_memes_test.mocks.dart';

@GenerateMocks([MemeRepositories])
void main() {
  final mockMemeRepositories = MockMemeRepositories();

  void setUpSuccessForGetMeMes() async {
    when(mockMemeRepositories.getMemes())
        .thenAnswer((realInvocation) async => Right(mockListOfMemed));
  }

  void setUpFailureForGetMeMes() async {
    when(mockMemeRepositories.getMemes())
        .thenAnswer((realInvocation) async => const Left(mockfailure));
  }

  test('while calling getMemes usecases we should get a list of Meme objects',
      () async {
    setUpSuccessForGetMeMes();
    // final mockMemeRepositories = MockMemeRepositories();

    GetMemes getMemes = GetMemes(memeRepositories: mockMemeRepositories);

    final result = await getMemes(NoParams());

    expect(result.fold((l) => l, (r) => r), mockListOfMemed);
  });

  test('while calling getMemes usecases we should get failure', () async {
    setUpFailureForGetMeMes();
    // final mockMemeRepositories = MockMemeRepositories();

    GetMemes getMemes = GetMemes(memeRepositories: mockMemeRepositories);

    final result = await getMemes(NoParams());

    expect(result.fold((l) => l, (r) => r), mockfailure);
  });
}
