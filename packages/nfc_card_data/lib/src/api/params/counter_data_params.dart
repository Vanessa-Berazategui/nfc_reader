// Package imports:
import 'package:nfc_card_domain/nfc_card_domain.dart';

class CounterDataParams extends CounterParams {
  const CounterDataParams({required super.value});

  factory CounterDataParams.fromDomain(CounterParams params) =>
      CounterDataParams(
        value: params.value,
      );
}
