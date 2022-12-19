import 'package:thirdpro/YouType/omerAhmed/data/model/characterModl.dart';
import 'package:thirdpro/YouType/omerAhmed/data/web_service/character_web_service.dart';

class CharacterRepisory {
  CharacterWebService characterWebService;
  CharacterRepisory({
    required this.characterWebService,
  });

  Future<List<Character>> getAllCharacter() async {
    final character = await characterWebService.getAllCharacter();
    return character.map((char) => Character.fromJson(char)).toList();
  }
}
