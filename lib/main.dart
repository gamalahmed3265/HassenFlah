import 'package:flutter/material.dart';
import 'package:thirdpro/YouType/Hamza/animation.dart';
import 'package:thirdpro/YouType/Hamza/oneH.dart';
import 'package:thirdpro/YouType/Hamza/tabBarH.dart';

import 'package:thirdpro/YouType/covid19/pages/intro_pages_screen.dart';
import 'package:thirdpro/YouType/Hamza/mainHamza.dart';
import 'package:thirdpro/app_router.dart';
import 'package:thirdpro/traingHassen/PartOne.dart';

// void main() {
//   runApp(MyApp());
// }
void main() {
  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;

  const MyApp({
    Key? key,
    required this.appRouter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generteRouter);
        // title: 'Flutter Demo',
        // home: OneSateF());
  }
}
