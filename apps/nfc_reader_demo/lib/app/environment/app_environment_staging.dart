// Package imports:

// Project imports:
import 'package:demo/app/app.dart';
// Package imports:
import 'package:injectable/injectable.dart';

@LazySingleton(as: AppEnvironment, env: [AppEnvironment.stg])
class AppEnvironmentStaging implements AppEnvironment {
  @override
  String get env => AppEnvironment.stg;
}
