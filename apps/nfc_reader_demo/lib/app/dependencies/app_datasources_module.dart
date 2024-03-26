import 'package:injectable/injectable.dart';
import 'package:nfc_reader_data/nfc_reader_data.dart';

@module
abstract class AppDataSourcesModule {
  //============================
  // NFC
  //============================
  @lazySingleton
  NFCDataSource nfcDataSource() => NFCDataSource();
}
