import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_twitch/modules/home/presenter/stores/home_controller.dart';
import 'package:pokedex_twitch/modules/home/presenter/stores/poke_controller.dart';
import 'package:pokedex_twitch/shared/constants/pokeColors.dart';

class PokeCard extends StatelessWidget {
  final int? dexNum;
  final String? name;
  final String? primaryType;

  PokeCard({Key? key, this.name, this.dexNum, this.primaryType})
      : super(key: key);

  final controller = Modular.get<PokeController>();
  final homeController = Modular.get<HomeController>();

  Color? get getPokemonColor => PokeColor.getColor(primaryType);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.symmetric(vertical: 30),
          height: 115,
          width: 334,
          decoration: BoxDecoration(
            color: getPokemonColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Column(
                children: [
                  Text(
                    dexNum! < 10
                        ? '#00$dexNum'
                        : dexNum! < 100
                            ? '#0$dexNum'
                            : '#$dexNum',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: Color.fromRGBO(23, 23, 27, .6),
                    ),
                  ),
                  Text(
                    name!,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 26,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [],
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          right: 10,
          child: Container(
            height: 130,
            width: 130,
            child: Image.network(
              '$dexNum'.length < 2
                  ? 'https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/00$dexNum.png'
                  : '$dexNum'.length < 3
                      ? 'https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/0$dexNum.png'
                      : 'https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/$dexNum.png',
            ),
          ),
        ),
      ],
    );
  }
}
