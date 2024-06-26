import 'package:demo/home/app_home_page.dart';
import 'package:demo/tag_reader/app_tag_reader_page.dart';

import 'package:flutter/foundation.dart';

import 'package:nfc_reader_presentation/nfc_reader_presentation.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: AppHomePage.route,
  routes: [
    AppHomePage(),
    AppTagReaderPage(),
  ],
  debugLogDiagnostics: kDebugMode,
);
