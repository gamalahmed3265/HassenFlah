import 'package:flutter/material.dart';
import 'package:thirdpro/YouType/Hamza/dataListTile.dart';
import 'package:thirdpro/YouType/Hamza/detilsHas.dart';
import 'package:thirdpro/YouType/omerAhmed/constant/colors.dart';

class MainHmaza extends StatefulWidget {
  const MainHmaza({Key? key}) : super(key: key);

  @override
  _MainHmazaState createState() => _MainHmazaState();
}

class _MainHmazaState extends State<MainHmaza> {
  @override
  List li = [
    'SD',
    'FD',
    'DF',
    'KD',
  ];
  late int con;
  GlobalKey<ScaffoldState> scKey = new GlobalKey<ScaffoldState>();
  bool checkboxL = true;
  bool switchw = true;
  var select;
  String contrayt = "";
  Widget build(BuildContext context) {
    return Scaffold(
      key: scKey,
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: Mobilelist.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1, crossAxisSpacing: 10, childAspectRatio: 3),
          itemBuilder: (context, index) => Container(
            color: Colors.red,
            margin: EdgeInsets.only(bottom: 10),
            child: ListTile(
                leading: Icon(
                  Icons.code,
                  color: Colors.white,
                ),
                title: Text(
                  '${con = index + 1} ${Mobilelist[index]['name']} ',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Text(
                  '${DateTime.now().year} /${DateTime.now().month}\n${DateTime.now().hour} :${DateTime.now().minute}',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  '${Mobilelist[index]['contant']}',
                  style: TextStyle(color: Colors.white),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                onTap: () => showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        actions: [
                          ElevatedButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: Text("Ok")),
                        ],
                        title: Text('${Mobilelist[index]['name']}'),
                        content: Text('${Mobilelist[index]['contant']}'),
                      );
                    })),
          ),
        ),
      ),
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
    );
  }
}


// Container(
//         margin: EdgeInsets.all(20),
//         child: ListView.builder(
//             itemCount: Mobilelist.length,
//             itemBuilder: (context, index) => Container(
//                   padding: EdgeInsets.all(10),
//                   margin: EdgeInsets.only(bottom: 10),
//                   color: Colors.red,
//                   child: ListTile(
//                       leading: Icon(
//                         Icons.code,
//                         color: Colors.white,
//                       ),
//                       title: Text(
//                         '${con = index + 1} ${Mobilelist[index]['name']} ',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       trailing: Text(
//                         '${DateTime.now().year} /${DateTime.now().month}\n${DateTime.now().hour} :${DateTime.now().minute}',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       subtitle: Text(
//                         '${Mobilelist[index]['contant']}',
//                         style: TextStyle(color: Colors.white),
//                         maxLines: 1,
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                       onTap: () => showDialog(
//                           context: context,
//                           builder: (context) {
//                             return AlertDialog(
//                               actions: [
//                                 ElevatedButton(
//                                     onPressed: () =>
//                                         Navigator.of(context).pop(),
//                                     child: Text("Ok")),
//                               ],
//                               title: Text('${Mobilelist[index]['name']}'),
//                               content: Text('${Mobilelist[index]['contant']}'),
// // => Navigator.of(context).push(MaterialPageRoute(
// //                         builder: (_) => DetilesHassen(
// //                               index: index,
// //                             ))),
//                             );
//                           })),
//                 )),
//       ),

// Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
              // Container(
              //   decoration: BoxDecoration(
              //       border: Border.all(color: Colors.teal, width: 20),
              //       borderRadius: BorderRadius.circular(20)),
              //   child: Text(
              //     'sdlsdl',
              //     style: TextStyle(fontSize: 29, shadows: [
              //       // Shadow(
              //       //   blurRadius: 3,
              //       //   color: Colors.red,
              //       //   offset: Offset(100, 100),
              //       // ),
              //     ]),
              //   ),
              // ),
              // Container(
              //   padding: EdgeInsets.all(20),
              //   child: DropdownButton(
              //     isExpanded: true,
              //     hint: Container(
              //       padding: EdgeInsets.all(10),
              //       width: double.infinity,
              //       child: Text(
              //         'Choice',
              //         style: TextStyle(
              //           color: Colors.red,
              //         ),
              //         // textDirection: TextDirection.ltr,
              //         textAlign: TextAlign.left,
              //       ),
              //     ),
              //     items: li
              //         .map((e) => DropdownMenuItem(
              //               child: Text('$e'),
              //               value: e,
              //             ))
              //         .toList(),
              //     onChanged: (va) {
              //       setState(() {
              //         select = va.toString();
              //       });
              //     },
              //     value: select,
              //   ),
              // ),
              // Container(
              //   margin: EdgeInsets.only(top: 10),
              //   padding: EdgeInsets.all(10),
              //   child: CheckboxListTile(
              //       controlAffinity: ListTileControlAffinity.leading,
              //       title: Text('Contary'),
              //       subtitle: Text('$select'),
              //       secondary: Icon(Icons.flag),
              //       value: checkboxL,
              //       isThreeLine: true,
              //       activeColor: Colors.red,
              //       selected: checkboxL,
              //       onChanged: (val) {
              //         setState(() {
              //           checkboxL = val!;
              //         });
              //       }),
              // ),
              // RadioListTile(
              //   controlAffinity: ListTileControlAffinity.leading,
              //   title: Text('Contary'),
              //   subtitle: Text('$select'),
              //   secondary: Icon(Icons.flag),
              //   isThreeLine: true,
              //   activeColor: Colors.red,
              //   value: 'eg',
              //   groupValue: contrayt,
              //   onChanged: (val) {
              //     setState(() {
              //       contrayt = val.toString();
              //     });
              //   },
              // ),
              // RadioListTile(
              //   controlAffinity: ListTileControlAffinity.leading,
              //   title: Text('Contary'),
              //   subtitle: Text('$select'),
              //   secondary: Icon(Icons.flag),
              //   isThreeLine: true,
              //   activeColor: Colors.red,
              //   value: 'rr',
              //   groupValue: contrayt,
              //   onChanged: (val) {
              //     setState(() {
              //       contrayt = val.toString();
              //     });
              //   },
              // ),
              // SwitchListTile(
              //     //                 inactiveThumbColor: Colors.deepOrange,
              //     // inactiveTrackColor: Colors.green,


              //     controlAffinity: ListTileControlAffinity.leading,

              //     title: Text('Contary'),
              //     subtitle: Text('$select'),
              //     secondary: Icon(Icons.flag),
              //     isThreeLine: true,
              //     activeColor: Colors.red,
              //     value: switchw,
              //     onChanged: (val) {
              //       setState(() {
              //         switchw = val;
              //       });
              //     }),
              // Container(
              //   child: ListTile(
              //     title: Text(
              //       'Contary',
              //       style: TextStyle(color: Colors.red),
              //     ),
              //     subtitle: Text('$select'),
              //     leading: Icon(Icons.ac_unit_sharp),
              //     trailing: Text(
              //         '${DateTime.now().year} /${DateTime.now().month}\n${DateTime.now().hour} :${DateTime.now().minute}'),
              //     isThreeLine: true,
              //     selected: checkboxL,
              //     // hoverColor: Colors.red,
              //     // focusColor: Colors.green,
              //     // onTap: () => print('object'),
              //   ),
              // ),
              // ElevatedButton(
              //   child: Text('Elevated Button'),
              //   onPressed: () {
              //     var snackbar = SnackBar(
              //       content: Text('hey Gamal Ahmed'),
              //       backgroundColor: Colors.red,
              //       behavior: SnackBarBehavior.floating,
              //       margin: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
              //       duration: Duration(seconds: 10),
              //       padding: EdgeInsets.all(10),
              //       shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(10)),
              //       action: SnackBarAction(
              //         label: "Close",
              //         textColor: Colors.white,
              //         onPressed: () {
              //           showDialog(
              //               context: context,
              //               builder: (context) {
              //                 return AlertDialog(
              //                   actions: [
              //                     ElevatedButton(
              //                         onPressed: () =>
              //                             Navigator.of(context).pop(),
              //                         child: Text("Ok")),
              //                   ],
              //                   title: Text('This Dialog'),
              //                   content: Text('k kndsk kdns kslsfn nflsnfm '),
              //                 );
              //               });
              //         },
              //       ),
              //     );
              //     scKey.currentState!.showSnackBar(snackbar);
              //     print('object');
              //   },
              // ),
              
          //   ],
          // ),
