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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Positioned(
                left: 15,
                top: 10,
                child: Image.asset(
                  'assets/Generation/pattern.png',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 10,
                right: 0,
                child: Image.asset(
                  'assets/Generation/pokeball.png',
                  fit: BoxFit.cover,
                ),
              ),
              Center(child: Image.asset('assets/Generation/gen$genNum.png')),
            ],
          ),
          SizedBox(height: 15),
          Text(generation!, style: ModalStyle.modalSubtitle),
        ],
      ),
    );
  }
}
