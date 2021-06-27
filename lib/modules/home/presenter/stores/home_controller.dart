import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @action
  Widget getImage({String? numero}) {
    return CachedNetworkImage(
      placeholder: (context, url) => new Container(
        color: Colors.transparent,
      ),
      imageUrl: numero!.length < 2
          ? 'https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/00$numero.png'
          : numero.length < 3
              ? 'https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/0$numero.png'
              : 'https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/$numero.png',
    );
  }
}
