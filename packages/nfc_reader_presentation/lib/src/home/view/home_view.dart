// Flutter imports:
import 'package:flutter/material.dart';
import 'package:nfc_reader_domain/nfc_reader_domain.dart';
import 'package:nfc_reader_presentation/nfc_reader_presentation.dart';

// Project imports:
import 'package:nfc_reader_presentation/src/core/core.dart';
import 'package:nfc_reader_presentation/src/nfc_reader_presentation.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    required this.nfcText,
    required this.ilustration,
    super.key,
  });

  final String nfcText;
  final Widget ilustration;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    final bloc = context.read<HomeBloc>();

    return Scaffold(
      backgroundColor: colors.onPrimary,
      body: BlocConsumer<HomeBloc, HomeState>(
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
          return Stack(
            fit: StackFit.expand,
            children: [
              Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    ilustration,
                    Text(
                      nfcText,
                      textAlign: TextAlign.center,
                    ),
                    const Spacer(),
                    Builder(
                      builder: (_) {
                        if (state.isDone) {
                          return state.nfcSupport ?? false
                              ? Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.check_circle,
                                      color: colors.primary,
                                    ),
                                    const SizedBox(width: 6),
                                    const Text('NFC SUPPORTED'),
                                  ],
                                )
                              : Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.cancel_rounded,
                                      color: colors.error,
                                    ),
                                    const SizedBox(width: 6),
                                    const Text('NFC NOT SUPPORTED'),
                                  ],
                                );
                        } else {
                          return const Text('LOADING NFC INFORMATION ...');
                        }
                      },
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              if (state.loading) const AppBlockingLoadingWidget(),
            ],
          );
        },
      ),
    );
  }
}
