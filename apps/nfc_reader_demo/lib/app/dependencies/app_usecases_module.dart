// Package imports:
import 'package:injectable/injectable.dart';
import 'package:nfc_reader_domain/nfc_reader_domain.dart';

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
