// Project imports:
import 'package:nfc_reader_presentation/nfc_reader_presentation.dart';

typedef CreateBloc<T extends BlocBase<dynamic>> = T Function(
  BuildContext context,
);

typedef CreateBlocWithParam<T extends BlocBase<dynamic>> = T Function(
  BuildContext context,
  dynamic param1,
);
