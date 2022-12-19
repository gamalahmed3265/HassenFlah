import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'YouType/omerAhmed/business_logic/cubit/characters_cubit.dart';
import 'YouType/omerAhmed/constant/string.dart';
import 'YouType/omerAhmed/data/repisory/character_repisory.dart';
import 'YouType/omerAhmed/data/web_service/character_web_service.dart';
import 'YouType/omerAhmed/presention/screen/character_detiles_screen.dart';
import 'YouType/omerAhmed/presention/screen/characters_screen.dart';

class AppRouter {
  late CharacterRepisory characterRepisory;
  late CharactersCubit charactersCubit;

  AppRouter() {
    characterRepisory =
        CharacterRepisory(characterWebService: CharacterWebService());
    charactersCubit = CharactersCubit(characterRepisory);
  }
  Route? generteRouter(RouteSettings Settings) {
    switch (Settings.name) {
      case CharacterScrren:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => charactersCubit,
            child: CharactersScreen(),
          ),
        );
      case CharacterDetilesScrren:
        return MaterialPageRoute(builder: (_) => CharacterDetilesScreen());
    }
  }
}
