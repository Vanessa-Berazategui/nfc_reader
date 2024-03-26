// Project imports:
import 'package:nfc_reader_domain/nfc_reader_domain.dart';

abstract interface class CounterRepository extends BaseRepository {
  Future<Result<int>> getCounter(NoParams params);

  Future<Result<void>> saveCounter(CounterParams params);
}
