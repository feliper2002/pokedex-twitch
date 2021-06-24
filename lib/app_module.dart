// app_module.dart
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_twitch/modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: HomeModule()),
  ];
}
