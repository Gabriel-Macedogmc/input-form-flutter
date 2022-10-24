// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FormController on _FormControllerBase, Store {
  Computed<String>? _$userComputed;

  @override
  String get user => (_$userComputed ??=
          Computed<String>(() => super.user, name: '_FormControllerBase.user'))
      .value;

  late final _$emailAtom =
      Atom(name: '_FormControllerBase.email', context: context);

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: '_FormControllerBase.password', context: context);

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$_FormControllerBaseActionController =
      ActionController(name: '_FormControllerBase', context: context);

  @override
  dynamic setEmail(String value) {
    final _$actionInfo = _$_FormControllerBaseActionController.startAction(
        name: '_FormControllerBase.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_FormControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPassword(String value) {
    final _$actionInfo = _$_FormControllerBaseActionController.startAction(
        name: '_FormControllerBase.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$_FormControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateEmail(String value) {
    final _$actionInfo = _$_FormControllerBaseActionController.startAction(
        name: '_FormControllerBase.validateEmail');
    try {
      return super.validateEmail(value);
    } finally {
      _$_FormControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validatePassword(String value) {
    final _$actionInfo = _$_FormControllerBaseActionController.startAction(
        name: '_FormControllerBase.validatePassword');
    try {
      return super.validatePassword(value);
    } finally {
      _$_FormControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password},
user: ${user}
    ''';
  }
}
