import 'package:flutter/material.dart';
import 'package:pokedex_twitch/shared/themes/styles/modal_styles.dart';

class GenerationCard extends StatelessWidget {
  final String? generation;
  final String? initialsPath;
  final int? genNum;

  GenerationCard({this.generation, this.initialsPath, this.genNum});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 129,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Colors.grey[200],
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              'assets/Generation/pokeball.png',
              fit: BoxFit.cover,
              color: Colors.grey.withOpacity(.1),
            ),
          ),
          Positioned(
            left: 15,
            top: 5,
            child: Image.asset(
              'assets/Generation/pattern.png',
              fit: BoxFit.cover,
              color: Colors.grey.withOpacity(.2),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Image.asset('assets/Generation/gen$genNum.png')),
              SizedBox(height: 15),
              Text(generation!, style: ModalStyle.modalSubtitle),
            ],
          ),
        ],
      ),
    );
  }
}
