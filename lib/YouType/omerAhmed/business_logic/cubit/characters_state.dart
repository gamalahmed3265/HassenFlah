part of 'characters_cubit.dart';

@immutable
abstract class CharactersState {}

class CharactersInitial extends CharactersState {}

class CharactersError extends CharactersState {}

class CharactersLoad extends CharactersState {
  final List<Character> Characters;

  CharactersLoad(this.Characters);
}
