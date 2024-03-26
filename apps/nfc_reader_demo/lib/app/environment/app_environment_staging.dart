// Package imports:

// Project imports:
import 'package:demo/app/app.dart';
// Package imports:
import 'package:injectable/injectable.dart';

@LazySingleton(as: AppEnvironment, env: [AppEnvironment.stg])
class AppEnvironmentStaging implements AppEnvironment {
  @override
  String get baseUrl => '';

  @override
  int get connectTimeout => 30000;

  @override
  int get receiveTimeout => 50000;

  @override
  int get sendTimeout => 30000;

  @override
  String get env => AppEnvironment.stg;
}
