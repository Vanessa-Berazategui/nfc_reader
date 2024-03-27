// Package imports:
// Project imports:
import 'package:demo/app/dependencies/dependencies.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

export 'app_blocs_module.dart';

export 'app_datasources_module.dart';

export 'app_repositories_module.dart';
export 'app_usecases_module.dart';

final getIt = GetIt.I;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: false,
  asExtension: true,
)
Future<void> setupDependencies({
  required String env,
}) async =>
    getIt.init(environment: env);
