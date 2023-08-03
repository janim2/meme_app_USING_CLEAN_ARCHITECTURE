// event -> state -> bloc
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meme_app/core/usecases/empty_params.dart';
import '../../domain/entities/memes.dart';
import 'package:bloc/bloc.dart';
import 'package:meme_app/core/errors/failure.dart';
import '../../domain/usecases/get_memes.dart';

part 'get_meme_event.dart';
part 'get_meme_state.dart';
part 'get_meme_bloc.freezed.dart';

class GetMemeBloc extends Bloc<GetMemeEvent, GetMemeState> {
  final GetMemes getMemes;
  GetMemeBloc({
    required this.getMemes,
  }) : super(GetMemeState.initial()) {
    on<GetMemeEvent>((event, emit) async {
      emit(
        state.copyWith(loading: true),
      );
      final res = await getMemes(NoParams());

      res.fold((l) => emit(state.copyWith(loading: false, failure: l)),
          (r) => emit(state.copyWith(loading: false, memes: r)));
    });
  }
}
