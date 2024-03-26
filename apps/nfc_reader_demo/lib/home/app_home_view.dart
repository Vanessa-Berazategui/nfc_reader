// Project imports:
import 'package:demo/app/app.dart';

class AppHomeView extends StatelessWidget {
  const AppHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return HomeView(
      ilustration: Assets.images.nfc.image(),
      nfcText: l10n.nfcMeaning,
    );
  }
}
