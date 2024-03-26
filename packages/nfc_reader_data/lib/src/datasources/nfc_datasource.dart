// Package imports:
import 'package:nfc_manager/nfc_manager.dart';

// Project imports:
import 'package:nfc_reader_data/nfc_reader_data.dart';

class NFCDataSource extends BaseDataSource {
  Future<bool> getNFCSupport() async {
    final result = await NfcManager.instance.isAvailable();

    return result;
  }
}
