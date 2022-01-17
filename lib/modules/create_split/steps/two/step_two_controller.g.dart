// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step_two_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StepTwoController on _StepTwoControllerBase, Store {
  final _$frindsAtom = Atom(name: '_StepTwoControllerBase.frinds');

  @override
  List<Map<String, dynamic>> get frinds {
    _$frindsAtom.reportRead();
    return super.frinds;
  }

  @override
  set frinds(List<Map<String, dynamic>> value) {
    _$frindsAtom.reportWrite(value, super.frinds, () {
      super.frinds = value;
    });
  }

  final _$getFrindsAsyncAction =
      AsyncAction('_StepTwoControllerBase.getFrinds');

  @override
  Future<void> getFrinds(String search) {
    return _$getFrindsAsyncAction.run(() => super.getFrinds(search));
  }

  final _$_StepTwoControllerBaseActionController =
      ActionController(name: '_StepTwoControllerBase');

  @override
  dynamic onChange(String value) {
    final _$actionInfo = _$_StepTwoControllerBaseActionController.startAction(
        name: '_StepTwoControllerBase.onChange');
    try {
      return super.onChange(value);
    } finally {
      _$_StepTwoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
frinds: ${frinds}
    ''';
  }
}
