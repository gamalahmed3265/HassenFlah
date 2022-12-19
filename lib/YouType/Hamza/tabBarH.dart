import 'package:flutter/material.dart';
import 'package:thirdpro/YouType/Hamza/animation.dart';
import 'package:thirdpro/YouType/Hamza/dataListTile.dart';
import 'package:thirdpro/YouType/omerAhmed/constant/colors.dart';

class TabarWidget extends StatefulWidget {
  TabarWidget({Key? key}) : super(key: key);

  @override
  _TabarWidgetState createState() => _TabarWidgetState();
}

class _TabarWidgetState extends State<TabarWidget> {
  late PageController pc;

  @override
  void initState() {
    pc = new PageController(
      initialPage: 1,
    );
    super.initState();
  }

  late int con;
  late int setIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text("App"),
            actions: [
              Icon(Icons.search),
              SizedBox(
                width: 10,
              ),
              IconButton(
                onPressed: () => showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          elevation: 0,
                          actionsOverflowDirection: VerticalDirection.up,
                          title: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'new groub',
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'frindss',
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'share',
                              ),
                            ],
                          ),
                        )),
                icon: Icon(Icons.table_rows_sharp),
              ),
              SizedBox(
                width: 20,
              )
            ],
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text('one'),
                ),
                Tab(
                  child: Text('two'),
                ),
                Tab(
                  child: Text('three'),
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: ListView.builder(
                  itemCount: Mobilelist.length,
                  itemBuilder: (context, index) => ListTile(
                        onTap: () => print('ontap'),
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: Image(
                              fit: BoxFit.cover,
                              width: 20,
                              image: AssetImage('assets/images/person.png')),
                        ),
                        title: Text(
                          '${con = index + 1} ${Mobilelist[index]['name']} ',
                        ),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '${DateTime.now().hour} :${DateTime.now().minute}',
                            ),
                            Icon(Icons.notifications_off),
                          ],
                        ),
                        subtitle: Text(
                          '${Mobilelist[index]['contant']}',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 300,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.1, color: Colors.black),
                      ),
                      child: PageView(
                        controller: pc,
                        children: [
                          ComtaierImagePageView('assets/images/a2.png'),
                          ComtaierImagePageView('assets/images/a3.png'),
                          ComtaierImagePageView('assets/images/a4.png'),
                          ComtaierImagePageView('assets/images/a6.png'),
                          ComtaierImagePageView('assets/images/a9.png'),
                          ComtaierImagePageView('assets/images/a8.png'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      padding: EdgeInsets.all(20),
                      child: ElevatedButton(
                        child: Text('Click'),
                        onPressed: () => pc.animateToPage(2,
                            duration: Duration(microseconds: 200),
                            curve: Curves.easeIn),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red))),
              ),
            ),
          ]),
          floatingActionButton: FloatingA(),
          bottomNavigationBar: BottomNav(context),
          drawer: Drawer(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.red,
                    child: Text('G'),
                  ),
                  accountName: Text("gamal"),
                  accountEmail: Text("gamalhmed@gmail.com"),
                  decoration: BoxDecoration(color: Colors.green),
                ),
                ListTile(
                  onTap: () => print('object'),
                  leading: Icon(
                    Icons.home,
                  ),
                  title: Text(
                    'Home',
                  ),
                  subtitle: Text(
                    'Home  kndkml dldsml',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.home,
                  ),
                  title: Text(
                    'Home',
                  ),
                  subtitle: Text(
                    'Home  kndkml dldsml',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.home,
                  ),
                  title: Text(
                    'Home',
                  ),
                  subtitle: Text(
                    'Home  kndkml dldsml',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Container ComtaierImagePageView(String text) {
    return Container(
        padding: EdgeInsets.all(50),
        width: 400,
        height: 400,
        child: Image(
          image: AssetImage(text),
          fit: BoxFit.cover,
        ));
  }

  FloatingActionButton FloatingA() {
    return FloatingActionButton(
      child: Icon(
        Icons.message_rounded,
      ),
      backgroundColor: Colors.green,
      onPressed: () => print('onPressed'),
    );
  }

  BottomNavigationBar BottomNav(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.green,
      selectedItemColor: Colors.white,
      currentIndex: setIndex,
      unselectedItemColor: Colors.grey[300],
      onTap: (index) {
        setState(() {
          setIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.holiday_village),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.dangerous),
          label: "Dangerous",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.safety_divider),
          label: "Safety_Divider",
        ),
      ],
    );
  }
}
