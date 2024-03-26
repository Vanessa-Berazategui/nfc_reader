// Project imports:
import 'package:nfc_reader_domain/src/params/counter_params.dart';
import 'package:nfc_reader_domain/src/repositories/counter_repository.dart';
import 'package:nfc_reader_domain/src/result/result.dart';
import 'package:nfc_reader_domain/src/usecases/usecases.dart';

class SaveCounterUseCase implements BaseUseCase<void, CounterParams> {
  const SaveCounterUseCase({required CounterRepository repository})
      : _repository = repository;

  final CounterRepository _repository;

  @override
  Future<Result<void>> call(CounterParams params) =>
      _repository.saveCounter(params);
}
