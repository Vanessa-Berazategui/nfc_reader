// Project imports:
import 'package:demo/app/app.dart';
import 'package:demo/home/app_home_view.dart';

class AppHomePage extends HomePage {
  AppHomePage()
      : super(
          path: _path,
          name: route,
          bloc: (_) => getIt(),
          view: const AppHomeView(),
        );

  static const _path = '/home';

  static String get route => _path;

  static void open(BuildContext context) => context.go(route);
}
