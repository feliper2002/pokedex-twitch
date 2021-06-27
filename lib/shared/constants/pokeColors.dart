import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PokeColor {
  static Color? getColor(String? primaryType) {
    print(primaryType);
    if (primaryType == "Grass") return Color(0xff8BBE8A);
    if (primaryType == "Bug") return Color(0xff8BD674);
    if (primaryType == "Fire") return Color(0xffFFA756);
    if (primaryType == "Water") return Color(0xff58ABF6);
    if (primaryType == "Fairy") return Color(0xffEBA8C3);
    if (primaryType == "Poison") return Color(0xff9F6E97);
    if (primaryType == "Ground") return Color(0xffF78551);
    if (primaryType == "Electric") return Color(0xffF2CB55);
    if (primaryType == "Ice") return Color(0xff91D8DF);
    if (primaryType == "Dark") return Color(0xff6F6E78);
    if (primaryType == "Fighting") return Color(0xffEB4971);
    if (primaryType == "Dragon") return Color(0xff7383B9);
    if (primaryType == "Flying") return Color(0xff83A2E3);
    if (primaryType == "Rock") return Color(0xffD4C294);
    if (primaryType == "Steel") return Color(0xff4C91B2);
    if (primaryType == "Psychic") return Color(0xffFF6568);
    if (primaryType == "Normal") return Color(0xffB5B9C4);
    if (primaryType == "Ghost") return Color(0xff8571BE);
  }
}
