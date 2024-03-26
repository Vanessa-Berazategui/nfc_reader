// Project imports:
import 'package:nfc_reader_domain/nfc_reader_domain.dart';

class GetNFCSupportUseCase implements BaseUseCase<bool, NoParams> {
  const GetNFCSupportUseCase({required NFCRepository repository})
      : _repository = repository;

  final NFCRepository _repository;

  @override
  Future<Result<bool>> call(NoParams params) =>
      _repository.getNFSupport(params);
}
