// Package imports:
import 'package:meta/meta.dart';

// Project imports:
import 'package:nfc_card_domain/nfc_card_domain.dart';

@immutable
abstract class BaseUseCase<Type, Params extends BaseParams> {
  const BaseUseCase();

  Future<Result<Type>> call(Params params);
}
