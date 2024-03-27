// Project imports:
import 'package:nfc_reader_domain/nfc_reader_domain.dart';

class StopReaderUseCase implements BaseUseCase<void, NoParams> {
  const StopReaderUseCase({
    required NFCRepository repository,
  }) : _repository = repository;

  final NFCRepository _repository;

  @override
  Future<Result<void>> call(
    NoParams params,
  ) =>
      _repository.stopReader(params);
}
