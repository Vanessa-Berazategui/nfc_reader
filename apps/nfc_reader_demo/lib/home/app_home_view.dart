// Project imports:
import 'package:demo/app/app.dart';
import 'package:demo/tag_reader/app_tag_reader_page.dart';

class AppHomeView extends StatelessWidget {
  const AppHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return HomeView(
      ilustration: Assets.images.nfc.image(),
      nfcMeaningText: l10n.nfcMeaning,
      nfcSupportedText: l10n.nfcSupported,
      nfcNotSupportedText: l10n.nfcNotSupported,
      nfcSupportLoadingText: l10n.nfcSupportLoading,
      readTagText: l10n.readTag,
      checkAgainButton: l10n.chechAgain,
      onReadTag: () => AppTagReaderPage.open(context),
    );
  }
}
