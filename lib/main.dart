import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_twitch/app_module.dart';
import 'package:pokedex_twitch/app_widget.dart';

import 'modules/home/presenter/home.dart';

void main() => runApp(ModularApp(module: AppModule(), child: AppWidget()));
