// Project imports:
import 'package:nfc_reader_domain/nfc_reader_domain.dart';

class GetTagReaderStream
    implements BaseUseCase<Stream<Map<String, dynamic>>, NoParams> {
  const GetTagReaderStream({
    required NFCRepository repository,
  }) : _repository = repository;

  final NFCRepository _repository;

  @override
  Future<Result<Stream<Map<String, dynamic>>>> call(
    NoParams params,
  ) async =>
      Result.success(_repository.tagReaderStream);
}
