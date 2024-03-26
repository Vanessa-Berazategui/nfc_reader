// Package imports:
// Project imports:
import 'package:demo/app/app.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AppEnvironment, env: [AppEnvironment.dev])
class AppEnvironmentDevelopment implements AppEnvironment {
  @override
  String get env => AppEnvironment.dev;
}
