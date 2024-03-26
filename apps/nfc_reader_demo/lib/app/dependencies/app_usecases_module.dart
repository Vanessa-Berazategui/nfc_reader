// Package imports:
import 'package:injectable/injectable.dart';
import 'package:nfc_reader_domain/nfc_reader_domain.dart';

@module
abstract class AppUseCasesModule {
  //============================
  // NFC
  //============================
  @lazySingleton
  GetNFCSupportUseCase getNFSupportUseCase(
    NFCRepository repository,
  ) =>
      GetNFCSupportUseCase(repository: repository);
}
