// Project imports:
import 'package:nfc_reader_presentation/src/core/core.dart';
import 'package:nfc_reader_presentation/src/nfc_reader_presentation.dart';

abstract class HomePage<View extends Widget> extends GoRoute {
  HomePage({
    required super.path,
    required super.name,
    required CreateBloc<HomeBloc> bloc,
    required this.view,
  }) : super(
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: BlocProvider<HomeBloc>(
              create: bloc,
              child: view,
            ),
          ),
        );

  final View view;
}
