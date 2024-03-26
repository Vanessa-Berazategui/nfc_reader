// Flutter imports:
import 'package:flutter/foundation.dart';
// Project imports:
import 'package:demo/counter/app_counter_page.dart';
// Package imports:
import 'package:nfc_card_presentation/nfc_card_presentation.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: AppCounterPage.route,
  routes: [
    AppCounterPage(),
  ],
  debugLogDiagnostics: kDebugMode,
);
