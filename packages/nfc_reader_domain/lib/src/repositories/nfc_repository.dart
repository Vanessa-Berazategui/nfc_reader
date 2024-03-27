// Project imports:
import 'package:nfc_reader_domain/nfc_reader_domain.dart';

abstract interface class NFCRepository extends BaseRepository {
  Stream<Map<String, dynamic>> get tagReaderStream;

  Future<Result<bool>> getNFSupport(NoParams params);

  Future<Result<void>> startReader(NoParams params);

  Future<Result<void>> stopReader(NoParams params);
}
