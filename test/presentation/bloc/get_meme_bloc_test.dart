import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:meme_app/domain/usecases/get_memes.dart';
import 'package:meme_app/presentation/bloc/get_meme_bloc.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import '../../mocks/migrated_mocks.dart';
import 'get_meme_bloc_test.mocks.dart';

@GenerateMocks([GetMemes])
void main() {
  final mockGetMemes = MockGetMemes();

  void setupSuccessForGetMemes() {
    when(mockGetMemes.call(any))
        .thenAnswer((realInvocation) async => Right(mockListOfMemed));
  }

  void setupFailureForGetMemes() {
    when(mockGetMemes.call(any))
        .thenAnswer((realInvocation) async => const Left(mockfailure));
  }

  blocTest<GetMemeBloc, GetMemeState>(
      'emits [GetMemeState] when GetMeme Event is added.',
      build: () => GetMemeBloc(getMemes: mockGetMemes),
      act: (bloc) =>
          {setupSuccessForGetMemes(), bloc.add(const GetMemeEvent.getMemes())},
      expect: () => [
            const GetMemeState(loading: true),
            GetMemeState(loading: false, memes: mockListOfMemed)
          ]);

  blocTest<GetMemeBloc, GetMemeState>(
      'emits [GetMemeState] when GetMeme Event is added with failure',
      build: () => GetMemeBloc(getMemes: mockGetMemes),
      act: (bloc) =>
          {setupFailureForGetMemes(), bloc.add(const GetMemeEvent.getMemes())},
      expect: () => const [
            GetMemeState(loading: true),
            GetMemeState(loading: false, failure: mockfailure)
          ]);
}
