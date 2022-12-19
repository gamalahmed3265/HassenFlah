import 'package:thirdpro/YouType/omerAhmed/business_logic/cubit/characters_cubit.dart';

class Character {
  late int charId;
  late String name;
  late String nickName;
  late String image;
  late List<dynamic> jobs;
  late String statusIfDeadOrAlive;
  late List<dynamic> appearanceofSeason;
  late String acortName;
  late String categoryForTwoSeries;
  late List<dynamic> betterCallSauAppearance;

  Character.fromJson(Map<String, dynamic> json) {
    charId = json['char_id'];
    name = json['name'];
    nickName = json['nickname'];
    image = json['img'];
    jobs = json['occupation'];
    statusIfDeadOrAlive = json['status'];
    appearanceofSeason = json['appearance'];
    acortName = json['portrayed'];
    categoryForTwoSeries = json['category'];
    betterCallSauAppearance = json['better_call_saul_appearance'];
  }
}
