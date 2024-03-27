// Package imports:
import 'package:injectable/injectable.dart';
import 'package:nfc_reader_domain/nfc_reader_domain.dart';

@module
abstract class AppUseCasesModule {
  //============================
  // NFC
  //============================

  @lazySingleton
  GetTagReaderStream getTagReaderUseCase(
    NFCRepository repository,
  ) =>
      GetTagReaderStream(
        repository: repository,
      );

  @lazySingleton
  GetNFCSupportUseCase getNFSupportUseCase(
    NFCRepository repository,
  ) =>
      GetNFCSupportUseCase(
        repository: repository,
      );

  @lazySingleton
  StartReaderUseCase startReaderUseCase(
    NFCRepository repository,
  ) =>
      StartReaderUseCase(
        repository: repository,
      );

  @lazySingleton
  StopReaderUseCase stopReaderUseCase(
    NFCRepository repository,
  ) =>
      StopReaderUseCase(
        repository: repository,
      );
}
