// Project imports:
import 'package:nfc_reader_domain/nfc_reader_domain.dart';

abstract interface class NFCRepository extends BaseRepository {
  Future<Result<bool>> getNFSupport(NoParams params);
}
