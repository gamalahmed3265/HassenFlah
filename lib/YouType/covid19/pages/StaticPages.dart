import 'package:flutter/material.dart';
import 'package:thirdpro/YouType/covid19/core/consts.dart';
import 'package:thirdpro/YouType/covid19/core/flutter_icons.dart';
import 'package:thirdpro/YouType/covid19/pages/home_pages.dart';

class StaicPages extends StatefulWidget {
  @override
  _StaicPagesState createState() => _StaicPagesState();
}

class _StaicPagesState extends State<StaicPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColor.mainColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Image.asset('assets/images/virus2.png'),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                HomePages().buildAppBar(),
                HomePages()
                    .PaddingRowFun("Static".toUpperCase(), FontWeight.bold, 25),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.white),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(1, 1),
                        spreadRadius: 1,
                        blurRadius: 3,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 125,
                        height: 125,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.white),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(1, 1),
                              spreadRadius: 1,
                              blurRadius: 3,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          RowItem(Colors.blueAccent, 'Confirm', '20:34:33'),
                          RowItem(Colors.cyanAccent, 'Recoverd', '43:45:75'),
                          RowItem(Colors.redAccent, 'Confirm', '20:34:33'),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget RowItem(Color color, String text1, String text12) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Icon(
          FlutterIcons.label,
          size: 50,
          color: color,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text(text1), Text(text12)],
        )
      ],
    );
  }
}
