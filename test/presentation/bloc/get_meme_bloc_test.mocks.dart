// Mocks generated by Mockito 5.4.2 from annotations
// in meme_app/test/presentation/bloc/get_meme_bloc_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:dartz/dartz.dart' as _i3;
import 'package:meme_app/core/errors/failure.dart' as _i6;
import 'package:meme_app/core/usecases/empty_params.dart' as _i8;
import 'package:meme_app/domain/entities/memes.dart' as _i7;
import 'package:meme_app/domain/repositories/meme_repositories.dart' as _i2;
import 'package:meme_app/domain/usecases/get_memes.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeMemeRepositories_0 extends _i1.SmartFake
    implements _i2.MemeRepositories {
  _FakeMemeRepositories_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEither_1<L, R> extends _i1.SmartFake implements _i3.Either<L, R> {
  _FakeEither_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [GetMemes].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetMemes extends _i1.Mock implements _i4.GetMemes {
  MockGetMemes() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.MemeRepositories get memeRepositories => (super.noSuchMethod(
        Invocation.getter(#memeRepositories),
        returnValue: _FakeMemeRepositories_0(
          this,
          Invocation.getter(#memeRepositories),
        ),
      ) as _i2.MemeRepositories);
  @override
  _i5.Future<_i3.Either<_i6.Failure, List<_i7.Memes>>> call(
          _i8.NoParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i5.Future<_i3.Either<_i6.Failure, List<_i7.Memes>>>.value(
            _FakeEither_1<_i6.Failure, List<_i7.Memes>>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i5.Future<_i3.Either<_i6.Failure, List<_i7.Memes>>>);
}
