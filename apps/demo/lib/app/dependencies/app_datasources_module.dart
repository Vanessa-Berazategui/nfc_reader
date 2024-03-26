// Package imports:
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:nfc_card_data/nfc_card_data.dart';

@module
abstract class AppDataSourcesModule {
  //============================
  // Counter
  //============================
  @lazySingleton
  CounterRemoteDataSource counterRemoteDataSource(
          //FlutterDddSkeletonMonorepoFlavouredApi api,
          ) =>
      CounterRemoteDataSource(/*api: api*/);

  @lazySingleton
  CounterLocalDataSource counterLocalDataSource(
    FlutterSecureStorage storage,
  ) =>
      CounterLocalDataSource(storage: storage);
}
