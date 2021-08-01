import 'package:flutter/material.dart';
import 'package:pokedex_twitch/modules/home/presenter/widgets/generation/generation_modal.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 40,
      right: 40,
      child: Row(
        children: [
          GestureDetector(
            child: Image.asset('assets/AppBar/generation.png'),
            onTap: () {
              openGenerationModal(context);
            },
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              child: Image.asset('assets/AppBar/sort.png'),
              onTap: () {},
            ),
          ),
          GestureDetector(
            child: Image.asset('assets/AppBar/filter.png'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  openGenerationModal(BuildContext context) {
    return showModalBottomSheet(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return GenerationModal();
      },
    );
  }
}
