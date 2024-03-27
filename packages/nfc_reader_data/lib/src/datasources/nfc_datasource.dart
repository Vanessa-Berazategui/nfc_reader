// Package imports:
import 'dart:async';

import 'package:nfc_manager/nfc_manager.dart';

// Project imports:
import 'package:nfc_reader_data/nfc_reader_data.dart';

class NFCDataSource implements BaseDataSource {
  final _streamController = StreamController<Map<String, dynamic>>.broadcast();

  Stream<Map<String, dynamic>> get tagReaderStream => _streamController.stream;

  Future<bool> getNFCSupport() async {
    return Future.delayed(
      const Duration(seconds: 1),
      () => NfcManager.instance.isAvailable(),
    );
  }

  Future<void> startReader() async {
    try {
      final isSupported = await NfcManager.instance.isAvailable();

      if (isSupported) {
        final test = <String, String>{
          'name': 'Vanessa',
          'surname': 'Berazategui',
        };

        _streamController.add(test);
        await NfcManager.instance.startSession(
          onDiscovered: (NfcTag tag) async {
            _streamController.add(tag.data);
          },
        );
      } else {
        throw NFCReadException();
      }
    } catch (e) {
      throw NFCReadException();
    }
  }

  Future<void> stopReader() async {
    final isSupported = await NfcManager.instance.isAvailable();

    if (isSupported) {
      await NfcManager.instance.stopSession();
    }
  }
}
