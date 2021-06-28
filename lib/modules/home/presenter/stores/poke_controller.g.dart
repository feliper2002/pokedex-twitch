// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PokeController on _PokeControllerBase, Store {
  Computed<ObservableList<PokeAPI>?>? _$pokeAPIComputed;

  @override
  ObservableList<PokeAPI>? get pokeAPI => (_$pokeAPIComputed ??=
          Computed<ObservableList<PokeAPI>?>(() => super.pokeAPI,
              name: '_PokeControllerBase.pokeAPI'))
      .value;

  final _$_pokeApiAtom = Atom(name: '_PokeControllerBase._pokeApi');

  @override
  ObservableList<PokeAPI>? get _pokeApi {
    _$_pokeApiAtom.reportRead();
    return super._pokeApi;
  }

  @override
  set _pokeApi(ObservableList<PokeAPI>? value) {
    _$_pokeApiAtom.reportWrite(value, super._pokeApi, () {
      super._pokeApi = value;
    });
  }

  final _$filteredTextAtom = Atom(name: '_PokeControllerBase.filteredText');

  @override
  String get filteredText {
    _$filteredTextAtom.reportRead();
    return super.filteredText;
  }

  @override
  set filteredText(String value) {
    _$filteredTextAtom.reportWrite(value, super.filteredText, () {
      super.filteredText = value;
    });
  }

  final _$fetchApiAsyncAction = AsyncAction('_PokeControllerBase.fetchApi');

  @override
  Future<ObservableList<PokeAPI>> fetchApi() {
    return _$fetchApiAsyncAction.run(() => super.fetchApi());
  }

  final _$_PokeControllerBaseActionController =
      ActionController(name: '_PokeControllerBase');

  @override
  dynamic loadPokeAPI() {
    final _$actionInfo = _$_PokeControllerBaseActionController.startAction(
        name: '_PokeControllerBase.loadPokeAPI');
    try {
      return super.loadPokeAPI();
    } finally {
      _$_PokeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setFilteredText(dynamic text) {
    final _$actionInfo = _$_PokeControllerBaseActionController.startAction(
        name: '_PokeControllerBase.setFilteredText');
    try {
      return super.setFilteredText(text);
    } finally {
      _$_PokeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
filteredText: ${filteredText},
pokeAPI: ${pokeAPI}
    ''';
  }
}
