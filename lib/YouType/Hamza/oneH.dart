import 'package:flutter/material.dart';

class OneSateF extends StatefulWidget {
  OneSateF({Key? key}) : super(key: key);

  @override
  _OneSateFState createState() => _OneSateFState();
}

class _OneSateFState extends State<OneSateF> {
  ScrollController scollor = ScrollController();
  double valueSlider = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: searchDelg());
              },
              icon: Icon(Icons.search))
        ],
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(5),
        child: ListView(
          controller: scollor,
          children: [
            ElevatedButton(
                onPressed: () => scollor.animateTo(
                    scollor.position.maxScrollExtent,
                    duration: Duration(microseconds: 300),
                    curve: Curves.easeIn),
                child: Text("Jump Up")),
            ...List.generate(
                20,
                (index) => Container(
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(5),
                      color: index.isEven ? Colors.red : Colors.green,
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          '<<< ${index + 1} >>>',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )),
            ElevatedButton(
                onPressed: () => scollor.animateTo(
                    scollor.position.minScrollExtent,
                    duration: Duration(microseconds: 300),
                    curve: Curves.easeIn),
                child: Text("Jump Up"))
          ],
        ),
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Saeed",
              style: TextStyle(color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}

class searchDelg extends SearchDelegate {
  List names = [
    'Mohamed',
    "Gamal",
    "Saeed",
    "Zanab",
    "Basma",
    "Karim",
    "dnkdlf",
    "asdlamsd",
    "sdnksnd"
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.close))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
        onPressed: () {
          // Navigator.of(context).pop();
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return Text('Resulte');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    List FilterNames =
        names.where((element) => element.contains(query)).toList();
    return ListView.builder(
        itemCount: query == "" ? names.length : FilterNames.length,
        itemBuilder: (context, index) => Container(
              padding: EdgeInsets.all(10),
              child: query == ""
                  ? Text(
                      "${names[index]}",
                      style: TextStyle(fontSize: 25),
                    )
                  : Text("${FilterNames[index]}",
                      style: TextStyle(fontSize: 25)),
            ));
  }
}





// Container(
//         width: double.infinity,
//         margin: EdgeInsets.all(20),
//         child: Column(
//           children: [
//             Slider(
//                 mouseCursor: MaterialStateMouseCursor.textable,
//                 label: "kkkk",
//                 value: valueSlider,
//                 max: 10,
//                 min: 0,
//                 onChanged: (val) {
//                   setState(() {
//                     valueSlider = val;
//                   });
//                 }),
//             Container(
//               child: ListView(
//                 children: [
//                   ...List.generate(
//                       20,
//                       (index) => Container(
//                             color: index.isEven ? Colors.red : Colors.green,
//                             width: double.infinity,
//                             child: Text('<<< $index >>>'),
//                           )),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
