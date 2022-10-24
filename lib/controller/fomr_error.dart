import 'package:mobx/mobx.dart';
part 'fomr_error.g.dart';

class FormError = _FormErrorBase with _$FormError;

abstract class _FormErrorBase with Store {
  @observable
  String? email;

  @observable
  String? password;
}
