// Package imports:
import 'package:nfc_card_domain/nfc_card_domain.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppUseCasesModule {
  //============================
  // Counter
  //============================
  @lazySingleton
  GetCounterUseCase getCounterUseCase(
    CounterRepository repository,
  ) =>
      GetCounterUseCase(repository: repository);

  @lazySingleton
  SaveCounterUseCase saveCounterUseCase(
    CounterRepository repository,
  ) =>
      SaveCounterUseCase(repository: repository);
}
