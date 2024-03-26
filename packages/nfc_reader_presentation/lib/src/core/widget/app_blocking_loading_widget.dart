import 'package:nfc_reader_presentation/nfc_reader_presentation.dart';
import 'package:nfc_reader_presentation/src/core/core.dart';

class AppBlockingLoadingWidget extends StatelessWidget {
  const AppBlockingLoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final colors = context.colors;

    return ColoredBox(
      color: theme.scaffoldBackgroundColor.withOpacity(0.6),
      child: Center(
        child: CircularProgressIndicator(
          color: colors.primary,
        ),
      ),
    );
  }
}
