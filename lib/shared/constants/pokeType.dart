import 'package:flutter_svg/flutter_svg.dart';

class PokeType {
  static SvgPicture? getPokemonType(String? type) {
    if (type != null) return SvgPicture.asset("assets/Badge/$type.svg");
    if (type == "Grass") return SvgPicture.asset("assets/Badge/Grass.svg");
    if (type == "Bug") return SvgPicture.asset("assets/Badge/Bug.svg");
    if (type == "Fire") return SvgPicture.asset("assets/Badge/Fire.svg");
    if (type == "Water") return SvgPicture.asset("assets/Badge/Water.svg");
    if (type == "Fairy") return SvgPicture.asset("assets/Badge/Fairy.svg");
    if (type == "Poison") return SvgPicture.asset("assets/Badge/Poison.svg");
    if (type == "Ground") return SvgPicture.asset("assets/Badge/Ground.svg");
    if (type == "Electric")
      return SvgPicture.asset("assets/Badge/Electric.svg");
    if (type == "Ice") return SvgPicture.asset("assets/Badge/Ice.svg");
    if (type == "Dark") return SvgPicture.asset("assets/Badge/Dark.svg");
    if (type == "Fighting")
      return SvgPicture.asset("assets/Badge/Fighting.svg");
    if (type == "Dragon") return SvgPicture.asset("assets/Badge/Dragon.svg");
    if (type == "Flying") return SvgPicture.asset("assets/Badge/Flying.svg");
    if (type == "Rock") return SvgPicture.asset("assets/Badge/Rock.svg");
    if (type == "Steel") return SvgPicture.asset("assets/Badge/Steel.svg");
    if (type == "Psychic") return SvgPicture.asset("assets/Badge/Psychic.svg");
    if (type == "Normal") return SvgPicture.asset("assets/Badge/Normal.svg");
    if (type == "Ghost") return SvgPicture.asset("assets/Badge/Ghost.svg");
  }
}
