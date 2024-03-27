// Project imports:
import 'package:nfc_reader_domain/nfc_reader_domain.dart';

class StartReaderUseCase implements BaseUseCase<void, NoParams> {
  const StartReaderUseCase({
    required NFCRepository repository,
  }) : _repository = repository;

  final NFCRepository _repository;

  @override
  Future<Result<void>> call(
    NoParams params,
  ) =>
      _repository.startReader(params);
}
