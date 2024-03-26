// Package imports:
// Project imports:
import 'package:nfc_reader_data/src/api/params/counter_data_params.dart';
import 'package:nfc_reader_data/src/datasources/datasources.dart';
import 'package:nfc_reader_data/src/extensions/extensions.dart';
import 'package:nfc_reader_domain/nfc_reader_domain.dart';

class CounterDataRepository implements CounterRepository {
  CounterDataRepository({
    required CounterLocalDataSource localDataSource,
    required CounterRemoteDataSource remoteDataSource,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource;

  final CounterLocalDataSource _localDataSource;
  final CounterRemoteDataSource _remoteDataSource;

  @override
  Future<Result<int>> getCounter(NoParams params) async => process(
        action: _localDataSource.getCounter,
      );

  @override
  Future<Result<void>> saveCounter(CounterParams params) async => process(
        action: () => _localDataSource.saveCounter(
          CounterDataParams.fromDomain(params),
        ),
      );
}
