import 'package:flutter/material.dart';
import 'package:thirdpro/YouType/covid19/core/consts.dart';
import 'package:thirdpro/YouType/covid19/core/flutter_icons.dart';
import 'package:thirdpro/YouType/covid19/pages/StaticPages.dart';

class HomePages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ContainerHEADER(),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                          text: 'System of',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          children: [
                            TextSpan(
                                text: 'COVID-19',
                                style: TextStyle(color: AppColor.mainColor)),
                          ]),
                    ),
                    Container(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          ListViewContainer('assets/images/1.png', 'Fever'),
                          ListViewContainer(
                              'assets/images/2.png', 'Dry Cought'),
                          ListViewContainer('assets/images/3.png', 'Headache'),
                          ListViewContainer(
                              'assets/images/4.png', 'Breathless'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Prevention',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Container(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          ListViewPrevention(
                              'assets/images/a1.png', 'Wash', 'Hands Often'),
                          ListViewPrevention(
                              'assets/images/a2.png', 'Home', 'Hands Often'),
                          ListViewPrevention(
                              'assets/images/a3.png', 'COVER', 'Hands Often'),
                          ListViewPrevention(
                              'assets/images/a4.png', 'Wash', 'Hands Often'),
                          ListViewPrevention(
                              'assets/images/a6.png', 'Always', 'Clean'),
                          ListViewPrevention(
                              'assets/images/a8.png', 'Wash', 'Hands Often'),
                          ListViewPrevention(
                              'assets/images/a9.png', 'Use', 'Mask'),
                          ListViewPrevention(
                              'assets/images/a10.png', 'Wash', 'Hands Often'),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => StaicPages()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 10, bottom: 10),
                        width: double.infinity,
                        height: 100,
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
                          children: [
                            Image.asset('assets/images/map.png'),
                            SizedBox(
                              width: 10,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: 'Cases\n'.toUpperCase(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.mainColor),
                                  children: [
                                    TextSpan(
                                        text: 'OverView WorldWide',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.normal)),
                                  ]),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget ContainerHEADER() {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.mainColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      padding: const EdgeInsets.only(top: 25),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildAppBar(),
              PaddingRowFun('COVID-19', FontWeight.bold, 25),
              SizedBox(
                height: 25,
              ),
              PaddingRowFun('Coronavirus Relief Fund', FontWeight.normal, 15),
              SizedBox(
                height: 10,
              ),
              PaddingRowFun(
                  'To this Fund We Help to Stope the virus\'s spread and Give\ncommunitieson the font lines',
                  FontWeight.normal,
                  15),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  elevatedButton('DONATE NOW', Colors.blue),
                  elevatedButton('EMERGENCY', Colors.red),
                ],
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
          Image.asset('assets/images/virus2.png'),
        ],
      ),
    );
  }

  Widget ListViewPrevention(String images, String text1, String text2) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: 10, top: 10),
          width: 200,
          height: 80,
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
            children: [
              Image.asset(images),
              SizedBox(
                width: 10,
              ),
              RichText(
                text: TextSpan(
                    text: '${text1}\n',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: AppColor.mainColor),
                    children: [
                      TextSpan(
                          text: text2,
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.normal)),
                    ]),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget ListViewContainer(String images, String text) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: 10, top: 10),
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
                colors: [AppColor.mainColor.withOpacity(0.1), Colors.white],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
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
          child: Image.asset(images),
          padding: EdgeInsets.only(top: 15),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }

  Widget elevatedButton(String text, Color color) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
      style: ElevatedButton.styleFrom(
        primary: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
    );
  }

  Widget PaddingRowFun(String text, FontWeight bold, double fontsize) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: bold,
          fontSize: fontsize,
        ),
      ),
    );
  }

  Widget buildAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(FlutterIcons.menu),
          onPressed: null,
        ),
        Container(
          width: 50,
          height: 50,
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                  image: AssetImage("assets/images/profile.jpg"))),
        )
      ],
    );
  }
}
