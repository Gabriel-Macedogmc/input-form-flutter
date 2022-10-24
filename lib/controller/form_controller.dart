import 'package:input_form/controller/fomr_error.dart';
import 'package:mobx/mobx.dart';
part 'form_controller.g.dart';

class FormController = _FormControllerBase with _$FormController;

abstract class _FormControllerBase with Store {
  final FormError error = FormError();
  @observable
  String email = "";

  @observable
  String password = "";

  @action
  setEmail(String value) => email = value;

  @action
  setPassword(String value) => password = value;

  @computed
  String get user => "$email $password";

  @action
  void validateEmail(String value) {
    error.email = value.isEmpty ? "Não pode ser em branco" : null;
  }

  @action
  void validatePassword(String value) {
    error.password = value.isEmpty ? "Não pode ser em branco" : null;
  }

  void validateAll() {
    validatePassword(password);
    validateEmail(email);
  }
}
