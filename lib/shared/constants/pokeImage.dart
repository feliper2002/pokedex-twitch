import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PokeImage {
  static Widget getImage({String? numero, double? height, double? width}) {
    return CachedNetworkImage(
      placeholder: (context, url) =>
          CircularProgressIndicator(color: Colors.red),
      imageUrl: numero!.length < 2
          ? 'https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/00$numero.png'
          : numero.length < 3
              ? 'https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/0$numero.png'
              : 'https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/$numero.png',
      imageBuilder: (context, imageProvider) => Container(
        height: height ?? 130,
        width: width ?? 130,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
