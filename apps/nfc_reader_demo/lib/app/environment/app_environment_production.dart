// Package imports:

// Project imports:
import 'package:demo/app/app.dart';
// Package imports:
import 'package:injectable/injectable.dart';

@LazySingleton(as: AppEnvironment, env: [AppEnvironment.prod])
class AppEnvironmentProduction implements AppEnvironment {
  @override
  String get env => AppEnvironment.prod;
}
