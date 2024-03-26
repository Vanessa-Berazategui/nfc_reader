// Package imports:
import 'package:injectable/injectable.dart';
import 'package:nfc_reader_data/nfc_reader_data.dart';
import 'package:nfc_reader_domain/nfc_reader_domain.dart';

@module
abstract class AppRepositoriesModule {
  //============================
  // NFC
  //============================
  @lazySingleton
  NFCRepository nfcRepository(
    NFCDataSource dataSource,
  ) =>
      NFCDataRepository(
        dataSource: dataSource,
      );
}
