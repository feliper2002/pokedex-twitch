import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:pokedex_twitch/modules/home/presenter/models/pokeapi.dart';
import 'package:pokedex_twitch/shared/constants/appconsts.dart';
part 'poke_controller.g.dart';

class PokeController = _PokeControllerBase with _$PokeController;

abstract class _PokeControllerBase with Store {
  final dio = Dio();
  final url = AppConstants.kanto;

  @observable
  String? nome;

  @observable
  ObservableList<PokeAPI>? _pokeApi = <PokeAPI>[].asObservable();

  @computed
  ObservableList<PokeAPI>? get pokeAPI => _pokeApi;

  @action
  Future<ObservableList<PokeAPI>> fetchApi() async {
    final response = await dio.get(url);

    final lista = <PokeAPI>[].asObservable();
    for (var item in (response.data)) {
      final model = PokeAPI.fromJson(item);
      lista.add(model);
    }
    return lista;
  }

  @action
  loadPokeAPI() {
    _pokeApi = null;
    fetchApi().then((value) {
      _pokeApi = value;
      print("Adicionou: ${_pokeApi!.length}");
    });
  }

  ObservableList<PokeAPI> listaPokemon = <PokeAPI>[].asObservable();
}
