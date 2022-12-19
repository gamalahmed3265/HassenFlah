import 'package:flutter/material.dart';
import 'package:thirdpro/YouType/covid19/core/consts.dart';
import 'package:thirdpro/YouType/covid19/pages/home_pages.dart';

class IntroPages extends StatefulWidget {
  @override
  _IntroPagesState createState() => _IntroPagesState();
}

class _IntroPagesState extends State<IntroPages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColor.mainColor,
                AppColor.mainColor.withOpacity(.5),
              ],
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter,
            ),
          ),
          child: Stack(
            children: [
              buildheader(),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: MediaQuery.of(context).size.width * .75,
                  child: Image.asset('assets/images/virus.png'),
                ),
              ),
              Positioned(
                right: 25,
                top: MediaQuery.of(context).size.height * .25,
                child: Container(
                  width: MediaQuery.of(context).size.width * .4,
                  child: Image.asset('assets/images/person.png'),
                ),
              ),
              buildFunction(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget buildheader() {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Align(
          alignment: Alignment.topCenter,
          child: Image.asset('assets/images/logo.png')),
    );
  }

  Widget buildFunction(BuildContext context) {
    return Positioned(
      bottom: 50,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Coronavirus disease (COVID-19)',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'is a infactianus disease caused by a new\nvirus',
              style: TextStyle(fontSize: 16, color: Colors.white, height: 1.5),
            ),
            SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => HomePages())),
              child: Container(
                width: MediaQuery.of(context).size.width * .85,
                height: 60,
                decoration: BoxDecoration(
                    color: AppColor.background,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(1, 1),
                          spreadRadius: 1,
                          blurRadius: 3),
                    ]),
                child: Center(
                  child: Text(
                    'GET STARED',
                    style: TextStyle(
                        color: AppColor.mainColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
