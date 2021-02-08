import 'package:flutter/material.dart';
import 'package:together/screens/login.dart';
import 'package:together/screens/support.dart';

import 'screens/giveHelp.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // checkLocationPermission();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: Text("Covid Situation"),
          title: Text("Together"),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[Colors.yellow, Colors.orange])),
          )),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(child: Container()),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ListOfPatient(),
                ));
              },
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 28.0, vertical: 10),
                    child: Text(
                      "Want to Give Help ?",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: InkWell(
          //     child: Center(
          //       child: Container(
          //         decoration: BoxDecoration(
          //             color: Colors.green,
          //             borderRadius: BorderRadius.circular(20)),
          //         child: Padding(
          //           padding: const EdgeInsets.symmetric(
          //               horizontal: 28.0, vertical: 10),
          //           child: Text(
          //             "Want to Take Help ?",
          //             style: TextStyle(
          //                 color: Colors.white, fontWeight: FontWeight.bold),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Login(),
                ));
              },
              // onTap: () {
              //   Navigator.of(context).push(MaterialPageRoute(
              //     builder: (context) => BloodBankForm(),
              //   ));
              // },
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 28.0, vertical: 10),
                    child: Text(
                      "Want to Take Help ?",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ),

          Expanded(child: Container()),
        ],
      ),
    );
  }
}
