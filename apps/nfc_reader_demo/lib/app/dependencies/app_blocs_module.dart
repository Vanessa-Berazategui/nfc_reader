// Project imports:

import 'package:injectable/injectable.dart';
// Package imports:
import 'package:nfc_reader_domain/nfc_reader_domain.dart';
import 'package:nfc_reader_presentation/nfc_reader_presentation.dart';

@module
abstract class AppBlocsModule {
  /// Global blocs

  /// Page View Blocs
  CounterBloc counterBloc(
    SaveCounterUseCase saveCounterUseCase,
    GetCounterUseCase getCounterUseCase,
  ) =>
      CounterBloc(
        saveCounterUseCase: saveCounterUseCase,
        getCounterUseCase: getCounterUseCase,
      );
}
