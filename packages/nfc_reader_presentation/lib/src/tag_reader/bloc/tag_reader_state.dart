part of 'tag_reader_bloc.dart';

@freezed
class TagReaderState with _$TagReaderState {
  const factory TagReaderState({
    required bool loading,
    Map<String, dynamic>? tagData,
    Failure? failure,
  }) = _TagReaderState;

  factory TagReaderState.init() => const TagReaderState(
        loading: false,
      );
}
