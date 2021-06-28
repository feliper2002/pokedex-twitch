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
    // pokeController.getFilteredText();
    super.initState();
  }

  final pokeController = Modular.get<PokeController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pokédex',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 32),
                  ),
                  Text(
                    'Search for Pokémon by name or using the National Pokédex number.',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(116, 116, 118, 1)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Observer(builder: (_) {
                return Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(242, 242, 242, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    controller: pokeController.textEditingController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(242, 242, 242, 1))),
                      prefixIcon: Icon(Icons.search),
                      hintText: 'What Pokémon are you looking for?',
                    ),
                    onChanged: (text) {
                      setState(() {
                        pokeController.setFilteredText(text);
                      });
                    },
                  ),
                );
              }),
            ),
            Expanded(
              child: Observer(builder: (_) {
                return FutureBuilder(
                  future: pokeController.fetchApi(),
                  initialData: pokeController.pokeAPI,
                  builder: (context, AsyncSnapshot<List<PokeAPI>?> snapshot) {
                    return snapshot.data != null
                        ? ListView.builder(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            itemCount: pokeController.getFilteredText()!.length,
                            itemBuilder: (context, index) {
                              List<PokeAPI> lista =
                                  pokeController.getFilteredText()!;
                              print(lista);
                              PokeAPI? poke = lista[index];
                              return PokeCard(
                                dexNum: poke.dexNr,
                                name: poke.names!.english!,
                                primaryType: poke.primaryType!.names!.english,
                              );
                            },
                          )
                        : Center(
                            child:
                                CircularProgressIndicator(color: Colors.red));
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
