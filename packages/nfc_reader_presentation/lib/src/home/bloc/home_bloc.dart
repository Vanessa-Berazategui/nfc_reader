// Package imports:
import 'package:bloc/bloc.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nfc_reader_domain/nfc_reader_domain.dart';

part 'home_bloc.freezed.dart';
part 'home_state.dart';

class HomeBloc extends Cubit<HomeState> {
  HomeBloc({
    required GetNFCSupportUseCase getNFCSupportUseCase,
  })  : _getNFCSupportUseCase = getNFCSupportUseCase,
        super(HomeState.init()) {
    _loadData();
  }

  final GetNFCSupportUseCase _getNFCSupportUseCase;

  Future<void> _loadData() async {
    emit(state.copyWith(loading: true));

    final result = await _getNFCSupportUseCase.call(const NoParams());

    result.when(
      success: (nfcSupport) => emit(
        state.copyWith(
          loading: false,
          isDone: true,
          nfcSupport: nfcSupport,
          failure: null,
        ),
      ),
      failure: (failure) => emit(
        state.copyWith(
          loading: false,
          isDone: true,
          nfcSupport: false,
          failure: failure,
        ),
      ),
    );
  }

  void cleanFailure() => emit(state.copyWith(failure: null));
}
