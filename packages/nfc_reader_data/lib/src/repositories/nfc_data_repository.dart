// Package imports:
// Project imports:
import 'package:nfc_reader_data/nfc_reader_data.dart';
import 'package:nfc_reader_domain/nfc_reader_domain.dart';

class NFCDataRepository implements NFCRepository {
  NFCDataRepository({
    required NFCDataSource dataSource,
  }) : _dataSource = dataSource;

  final NFCDataSource _dataSource;

  @override
  Future<Result<bool>> getNFSupport(NoParams params) async => process(
        action: _dataSource.getNFCSupport,
      );
}
