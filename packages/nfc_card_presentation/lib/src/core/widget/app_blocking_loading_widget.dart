import 'package:nfc_card_presentation/nfc_card_presentation.dart';
import 'package:nfc_card_presentation/src/core/core.dart';

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
