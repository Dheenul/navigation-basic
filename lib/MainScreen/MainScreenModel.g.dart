// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MainScreenModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MainScreenModel on _MainScreenModelBase, Store {
  late final _$numberAtom =
      Atom(name: '_MainScreenModelBase.number', context: context);

  @override
  int get number {
    _$numberAtom.reportRead();
    return super.number;
  }

  @override
  set number(int value) {
    _$numberAtom.reportWrite(value, super.number, () {
      super.number = value;
    });
  }

  late final _$_MainScreenModelBaseActionController =
      ActionController(name: '_MainScreenModelBase', context: context);

  @override
  void setNumber({required int number}) {
    final _$actionInfo = _$_MainScreenModelBaseActionController.startAction(
        name: '_MainScreenModelBase.setNumber');
    try {
      return super.setNumber(number: number);
    } finally {
      _$_MainScreenModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
number: ${number}
    ''';
  }
}
