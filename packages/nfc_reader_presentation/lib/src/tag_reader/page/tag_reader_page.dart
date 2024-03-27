import 'package:nfc_reader_presentation/src/core/core.dart';
import 'package:nfc_reader_presentation/src/nfc_reader_presentation.dart';

abstract class TagReaderPage<View extends Widget> extends GoRoute {
  TagReaderPage({
    required super.path,
    required super.name,
    required CreateBloc<TagReaderBloc> bloc,
    required this.view,
  }) : super(
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: BlocProvider<TagReaderBloc>(
              create: bloc,
              child: view,
            ),
          ),
        );

  final View view;
}
