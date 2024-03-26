// Project imports:
import 'package:nfc_card_presentation/nfc_card_presentation.dart';

typedef CreateBloc<T extends BlocBase<dynamic>> = T Function(
  BuildContext context,
);

typedef CreateBlocWithParam<T extends BlocBase<dynamic>> = T Function(
  BuildContext context,
  dynamic param1,
);
