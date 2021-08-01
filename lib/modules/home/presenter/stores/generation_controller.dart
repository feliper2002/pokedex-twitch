import 'package:mobx/mobx.dart';
part 'generation_controller.g.dart';

class GenerationController = _GenerationControllerBase
    with _$GenerationController;

abstract class _GenerationControllerBase with Store {
  final generationTitles = <Map<String, dynamic>>[
    {'gen': 'Generation I', 'initials': ''},
    {'gen': 'Generation II', 'initials': ''},
    {'gen': 'Generation III', 'initials': ''},
    {'gen': 'Generation IV', 'initials': ''},
    {'gen': 'Generation V', 'initials': ''},
    {'gen': 'Generation VI', 'initials': ''},
    {'gen': 'Generation VII', 'initials': ''},
  ];
}
