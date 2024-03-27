import 'package:injectable/injectable.dart';
import 'package:nfc_reader_domain/nfc_reader_domain.dart';
import 'package:nfc_reader_presentation/nfc_reader_presentation.dart';

@module
abstract class AppBlocsModule {
  /// Global blocs

  /// Page View Blocs
  HomeBloc homeBloc(
    GetNFCSupportUseCase getNFCSupportUseCase,
  ) =>
      HomeBloc(
        getNFCSupportUseCase: getNFCSupportUseCase,
      );

  TagReaderBloc tagReaderBloc(
    GetTagReaderStream getTagReaderStream,
    StartReaderUseCase startReaderUseCase,
    StopReaderUseCase stopReaderUseCase,
  ) =>
      TagReaderBloc(
        getTagReaderStreamUseCase: getTagReaderStream,
        startReaderUseCase: startReaderUseCase,
        stopReaderUseCase: stopReaderUseCase,
      );
}
