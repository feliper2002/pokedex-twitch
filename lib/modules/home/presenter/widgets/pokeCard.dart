import 'package:flutter/material.dart';

class PokeCard extends StatelessWidget {
  const PokeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 115,
          width: 334,
        ),
      ],
    );
  }
}
