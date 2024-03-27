import 'package:flutter/material.dart';
import 'package:nfc_reader_domain/nfc_reader_domain.dart';
import 'package:nfc_reader_presentation/src/core/core.dart';
import 'package:nfc_reader_presentation/src/nfc_reader_presentation.dart';

class TagReaderView extends StatelessWidget {
  const TagReaderView({
    required this.bringDeviceCloserText,
    super.key,
  });

  final String bringDeviceCloserText;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final texts = context.texts;

    final bloc = context.read<TagReaderBloc>();

    return Scaffold(
      backgroundColor: colors.onBackground,
      body: SafeArea(
        child: BlocListener<TagReaderBloc, TagReaderState>(
          listenWhen: (previous, current) => current.failure != null,
          listener: (context, state) {
            if (state.failure != null) {
              context.showErrorMessage(state.failure!.errorMessage);

              bloc.cleanFailure();
            }
          },
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  color: colors.secondary,
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  onPressed: () async {
                    await bloc.stopReader().then(
                          (value) => Navigator.pop(context),
                        );
                  },
                  icon: Icon(
                    Icons.close,
                    color: colors.onPrimary,
                  ),
                ),
              ),
              Text(
                bringDeviceCloserText.toUpperCase(),
                style: texts.bodyLarge?.copyWith(
                  color: colors.onPrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: Center(
                  child: BlocBuilder<TagReaderBloc, TagReaderState>(
                    buildWhen: (previous, current) =>
                        previous.tagData != current.tagData,
                    builder: (context, state) {
                      return Text(
                        state.tagData != null ? state.tagData!.toString() : '',
                        style: texts.bodyMedium?.copyWith(
                          color: colors.primary,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
