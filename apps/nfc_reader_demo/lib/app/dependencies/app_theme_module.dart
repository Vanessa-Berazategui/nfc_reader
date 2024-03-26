// Package imports:
// Project imports:
import 'package:demo/app/theme/material_theme.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppThemeModule {
  @lazySingleton
  MaterialTheme materialTheme() => MaterialTheme();
}
