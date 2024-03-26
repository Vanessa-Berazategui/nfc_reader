// Project imports:

import 'package:injectable/injectable.dart';
// Package imports:
import 'package:nfc_card_domain/nfc_card_domain.dart';
import 'package:nfc_card_presentation/nfc_card_presentation.dart';

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
