import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_twitch/modules/home/presenter/stores/home_controller.dart';
import 'package:pokedex_twitch/modules/home/presenter/stores/poke_controller.dart';
import 'package:pokedex_twitch/shared/constants/pokeColors.dart';
import 'package:pokedex_twitch/shared/constants/pokeImage.dart';
import 'package:pokedex_twitch/shared/constants/pokeType.dart';

class PokeCard extends StatelessWidget {
  final int? dexNum;
  final String? name;
  final String? primaryType;
  final String? secondaryType;

  PokeCard(
      {Key? key, this.name, this.dexNum, this.primaryType, this.secondaryType})
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
            boxShadow: [
              BoxShadow(
                color: getPokemonColor!.withOpacity(.3),
                offset: Offset(0, 5),
                blurRadius: .65,
              ),
            ],
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 5),
                        child: PokeType.getPokemonType(primaryType),
                      ),
                      secondaryType != null || secondaryType == ''
                          ? Container(
                              child: PokeType.getPokemonType(secondaryType),
                            )
                          : SizedBox.shrink(),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          right: 0,
          child: Image.asset(
            'assets/Container/pokeball.png',
            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          right: 15,
          child: PokeImage.getImage(numero: '$dexNum'),
        ),
        Positioned(
          right: 170,
          left: 80,
          top: 5,
          bottom: 70,
          child: Image.asset(
            'assets/Container/pattern.png',
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}
