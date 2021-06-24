import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_twitch/modules/home/presenter/home.dart';
import 'package:pokedex_twitch/modules/home/presenter/stores/home_controller.dart';
import 'package:pokedex_twitch/modules/home/presenter/stores/poke_controller.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => HomeController()),
    Bind((i) => PokeController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => HomePage()),
  ];
}
