// Flutter imports:
import 'package:nfc_reader_domain/nfc_reader_domain.dart';
import 'package:nfc_reader_presentation/nfc_reader_presentation.dart';

// Project imports:
import 'package:nfc_reader_presentation/src/core/core.dart';
import 'package:nfc_reader_presentation/src/nfc_reader_presentation.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    required this.nfcMeaningText,
    required this.nfcSupportedText,
    required this.nfcNotSupportedText,
    required this.nfcSupportLoadingText,
    required this.readTagText,
    required this.checkAgainButton,
    required this.ilustration,
    required this.onReadTag,
    super.key,
  });

  final String nfcMeaningText;
  final String nfcSupportedText;
  final String nfcNotSupportedText;
  final String nfcSupportLoadingText;
  final String readTagText;
  final String checkAgainButton;
  final Widget ilustration;
  final VoidCallback onReadTag;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final texts = context.texts;

    final bloc = context.read<HomeBloc>();

    return Scaffold(
      backgroundColor: colors.onPrimary,
      body: SafeArea(
        child: BlocConsumer<HomeBloc, HomeState>(
          listenWhen: (previous, current) =>
              current.failure != null || current.isDone,
          listener: (context, state) {
            if (state.failure != null) {
              context.showErrorMessage(state.failure!.errorMessage);

              return bloc.cleanFailure();
            }
          },
          buildWhen: (previous, current) => previous.loading != current.loading,
          builder: (context, state) {
            final nfcSupport = state.nfcSupport ?? false;

            return Stack(
              fit: StackFit.expand,
              children: [
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ilustration,
                      Text(
                        nfcMeaningText,
                        textAlign: TextAlign.center,
                      ),
                      Builder(
                        builder: (_) {
                          if (state.isDone) {
                            return Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      nfcSupport
                                          ? Icons.check_circle
                                          : Icons.cancel_rounded,
                                      color: nfcSupport
                                          ? colors.primary
                                          : colors.error,
                                    ),
                                    const SizedBox(width: 6),
                                    Text(
                                      nfcSupport
                                          ? nfcSupportedText.toUpperCase()
                                          : nfcNotSupportedText.toUpperCase(),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                ElevatedButton(
                                  onPressed: nfcSupport ? onReadTag : null,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        readTagText.toUpperCase(),
                                        style: texts.bodyMedium?.copyWith(
                                          color: colors.secondary,
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Icon(
                                        Icons.sell,
                                        color: nfcSupport
                                            ? colors.primary
                                            : colors.secondary,
                                      ),
                                    ],
                                  ),
                                ),
                                TextButton(
                                  onPressed: bloc.checkAgain,
                                  child: Text(
                                    checkAgainButton.toUpperCase(),
                                    style: texts.bodySmall?.copyWith(
                                      color: colors.secondary,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          } else {
                            return Text(nfcSupportLoadingText);
                          }
                        },
                      ),
                    ],
                  ),
                ),
                if (state.loading) const AppBlockingLoadingWidget(),
              ],
            );
          },
        ),
      ),
    );
  }
}
