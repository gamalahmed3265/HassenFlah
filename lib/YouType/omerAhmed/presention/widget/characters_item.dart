import 'package:flutter/material.dart';
import 'package:thirdpro/YouType/omerAhmed/constant/colors.dart';
import 'package:thirdpro/YouType/omerAhmed/data/model/characterModl.dart';

class CharactersItem extends StatelessWidget {
  final Character character;
  const CharactersItem({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(4),
      margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
      decoration: BoxDecoration(
        color: colors.myGray,
        borderRadius: BorderRadius.circular(8),
      ),
      child: GridTile(
        child: Text('imahe'),
        footer: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          color: Colors.black54,
          alignment: Alignment.bottomCenter,
          child: Text(
            '${character.name}',
            style: TextStyle(
                height: 1.3,
                fontSize: 16,
                color: colors.myWhite,
                fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
