import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nfc_reader_domain/nfc_reader_domain.dart';

part 'tag_reader_bloc.freezed.dart';
part 'tag_reader_state.dart';

class TagReaderBloc extends Cubit<TagReaderState> {
  TagReaderBloc({
    required GetTagReaderStream getTagReaderStreamUseCase,
    required StartReaderUseCase startReaderUseCase,
    required StopReaderUseCase stopReaderUseCase,
  })  : _getTagReaderStream = getTagReaderStreamUseCase,
        _startReaderUseCase = startReaderUseCase,
        _stopReaderUseCase = stopReaderUseCase,
        super(TagReaderState.init()) {
    _init();
  }

  final GetTagReaderStream _getTagReaderStream;
  final StartReaderUseCase _startReaderUseCase;
  final StopReaderUseCase _stopReaderUseCase;

  late final StreamSubscription<Map<String, dynamic>>? _tagReaderStream;

  Future<void> _init() async {
    final result = await _getTagReaderStream.call(const NoParams());

    result.when(
      success: (stream) {
        _tagReaderStream = stream.listen(
          (tagData) => emit(
            state.copyWith(
              tagData: tagData,
            ),
          ),
        );
        _startReader();
      },
      failure: (_) => null,
    );
  }

  Future<void> _startReader() async {
    final result = await _startReaderUseCase.call(const NoParams());

    result.when(
      success: (_) => (),
      failure: (failure) => emit(
        state.copyWith(
          failure: failure,
        ),
      ),
    );
  }

  Future<void> stopReader() async => _stopReaderUseCase.call(const NoParams());

  void cleanFailure() => emit(state.copyWith(failure: null));

  @override
  Future<void> close() {
    _tagReaderStream?.cancel();
    return super.close();
  }
}
