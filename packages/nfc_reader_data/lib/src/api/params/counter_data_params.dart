// Package imports:
import 'package:nfc_reader_domain/nfc_reader_domain.dart';

class CounterDataParams extends CounterParams {
  const CounterDataParams({required super.value});

  factory CounterDataParams.fromDomain(CounterParams params) =>
      CounterDataParams(
        value: params.value,
      );
}
