import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:thirdpro/YouType/omerAhmed/data/model/characterModl.dart';
import 'package:thirdpro/YouType/omerAhmed/data/repisory/character_repisory.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  CharacterRepisory characterRepisory;
  List<Character> character = [];

  CharactersCubit(this.characterRepisory) : super(CharactersInitial());

  Future<List<Character>> getAllCharacter() async {
    characterRepisory.getAllCharacter().then((character) {
      emit(CharactersLoad(character));
      this.character = character;
    }).catchError((onError) {
      emit(CharactersError());
    });
    return character;
  }
}
