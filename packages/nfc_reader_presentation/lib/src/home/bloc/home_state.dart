part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool loading,
    required bool isDone,
    bool? nfcSupport,
    Failure? failure,
  }) = _HomeState;

  factory HomeState.init() => const HomeState(
        loading: false,
        isDone: false,
      );
}
