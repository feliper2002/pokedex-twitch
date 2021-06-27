import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_twitch/modules/home/presenter/models/pokeapi.dart';
import 'package:pokedex_twitch/modules/home/presenter/stores/home_controller.dart';
import 'package:pokedex_twitch/modules/home/presenter/stores/poke_controller.dart';
import 'package:pokedex_twitch/modules/home/presenter/widgets/pokeCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 1), pokeController.loadPokeAPI());
    super.initState();
  }

  final pokeController = Modular.get<PokeController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Text(
              'Pokédex',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 32),
            ),
            Text(
                'Search for Pokémon by name or using the National Pokédex number.'),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'What Pokémon are you looking for?',
              ),
            ),
            Expanded(
              child: Observer(builder: (_) {
                return FutureBuilder(
                  future: pokeController.fetchApi(),
                  initialData: pokeController.pokeAPI,
                  builder: (context, snapshot) {
                    return pokeController.pokeAPI != null
                        ? ListView.builder(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            itemCount: pokeController.pokeAPI!.length,
                            itemBuilder: (context, index) {
                              PokeAPI poke = pokeController.pokeAPI![index];
                              return PokeCard(
                                dexNum: poke.dexNr,
                                name: poke.names!.english!,
                                primaryType: poke.primaryType!.names!.english,
                              );
                            },
                          )
                        : Center(child: CircularProgressIndicator());
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
