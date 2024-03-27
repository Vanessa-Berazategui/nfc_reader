import 'package:demo/app/app.dart';
import 'package:demo/tag_reader/app_tag_reader_view.dart';

class AppTagReaderPage extends TagReaderPage {
  AppTagReaderPage()
      : super(
          path: _path,
          name: route,
          bloc: (_) => getIt(),
          view: const AppTagReaderView(),
        );

  static const _path = '/tag_reader';

  static String get route => _path;

  static void open(BuildContext context) => context.push(route);
}
