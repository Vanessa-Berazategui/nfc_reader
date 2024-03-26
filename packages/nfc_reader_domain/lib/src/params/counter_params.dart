// Project imports:
import 'package:nfc_reader_domain/nfc_reader_domain.dart';

class CounterParams extends BaseParams {
  const CounterParams({
    required this.value,
  });

  final int value;
}
