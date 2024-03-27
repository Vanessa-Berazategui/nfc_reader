import 'package:demo/app/extensions/extensions.dart';
import 'package:nfc_reader_presentation/nfc_reader_presentation.dart';

class AppTagReaderView extends StatelessWidget {
  const AppTagReaderView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return TagReaderView(
      bringDeviceCloserText: l10n.bringDeviceCloser,
    );
  }
}
