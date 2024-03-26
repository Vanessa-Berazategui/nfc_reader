// Package imports:
import 'package:injectable/injectable.dart';
import 'package:nfc_card_data/nfc_card_data.dart';
import 'package:nfc_card_domain/nfc_card_domain.dart';

@module
abstract class AppRepositoriesModule {
  //============================
  // Counter
  //============================
  @lazySingleton
  CounterRepository aboutRepository(
    CounterLocalDataSource localDataSource,
    CounterRemoteDataSource remoteDataSource,
  ) =>
      CounterDataRepository(
        localDataSource: localDataSource,
        remoteDataSource: remoteDataSource,
      );
}
