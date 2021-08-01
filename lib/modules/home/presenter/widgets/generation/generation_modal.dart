import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_twitch/modules/home/presenter/stores/generation_controller.dart';
import 'package:pokedex_twitch/modules/home/presenter/widgets/generation/generation.card.dart';
import 'package:pokedex_twitch/shared/themes/styles/modal_styles.dart';

class GenerationModal extends StatelessWidget {
  final controller = Modular.get<GenerationController>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(top: 30, left: 40, right: 40),
      margin: const EdgeInsets.only(bottom: 10),
      height: size.height * .73,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Generations', style: ModalStyle.modalTitle),
          Text(
            'Use search for generations to explore your Pokémon!',
            style: ModalStyle.modalSubtitle,
          ),
          SizedBox(height: 35),
          Expanded(
            child: GridView.builder(
              itemCount: 7,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 14,
                crossAxisSpacing: 14,
              ),
              itemBuilder: (_, index) {
                return GenerationCard(
                  genNum: (index + 1),
                  generation: controller.generationTitles[index]['gen'],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
