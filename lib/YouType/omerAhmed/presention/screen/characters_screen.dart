import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thirdpro/YouType/omerAhmed/business_logic/cubit/characters_cubit.dart';
import 'package:thirdpro/YouType/omerAhmed/data/model/characterModl.dart';
import 'package:thirdpro/YouType/omerAhmed/constant/colors.dart';
import 'package:thirdpro/YouType/omerAhmed/presention/widget/characters_item.dart';

class CharactersScreen extends StatefulWidget {
  @override
  _CharactersScreenState createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  late List<Character> allCharacters;

  @override
  void initState() {
    super.initState();
    BlocProvider.of<CharactersCubit>(context).getAllCharacter();
  }

  Widget buildBlocProvider() {
    return BlocBuilder<CharactersCubit, CharactersState>(
        builder: (context, state) {
      if (state is CharactersLoad) {
        allCharacters = (state).Characters;
        return buildBlocLoadedWidget();
      } else {
        return buildBlocCiecle();
      }
    });
  }

  Widget buildBlocCiecle() {
    return Center(
      child: CircularProgressIndicator(
        color: colors.myYallow,
      ),
    );
  }

  Widget buildBlocLoadedWidget() {
    return SingleChildScrollView(
      child: Container(
        color: colors.myGray,
        child: Column(
          children: [
            buildBlocLoadedListView(),
          ],
        ),
      ),
    );
  }

  Widget buildBlocLoadedListView() {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 3,
          crossAxisSpacing: 1,
          mainAxisExtent: 1,
        ),
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        itemCount: allCharacters.length,
        itemBuilder: (context, index) => CharactersItem(
              character: allCharacters[index],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colors.myYallow,
        title: Text(
          'Characters',
          style: TextStyle(color: colors.myGray),
        ),
      ),
      body: buildBlocProvider(),
    );
  }
}
