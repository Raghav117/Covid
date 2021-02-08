import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:convert';

class ListOfPatient extends StatefulWidget {
  @override
  _ListOfPatientState createState() => _ListOfPatientState();
}

class _ListOfPatientState extends State<ListOfPatient> {
  List data = List();
  bool loading = true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
      children: [
        ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return GestureDetector(
              // onTap: () {
              //   Navigator.of(context).push(MaterialPageRoute(
              //     builder: (context) {
              //       return Details();
              //     },
              //   ));
              // },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: width / 6,
                              width: width,
                            ),
                            FlipCard(
                              back: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: <Color>[
                                            Colors.orange,
                                            Colors.yellow
                                          ])),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Gender :",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Expanded(child: Container()),
                                            Flexible(child: Text("dasfadfaff")),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.mobile_friendly,
                                              color: Colors.white,
                                            ),
                                            Expanded(child: Container()),
                                            Flexible(
                                                child:
                                                    Text("fadsas dfsasdfas")),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.date_range,
                                              color: Colors.white,
                                            ),
                                            Expanded(child: Container()),
                                            Flexible(child: Text("fasd")),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.location_city,
                                              color: Colors.white,
                                            ),
                                            Expanded(child: Container()),
                                            Flexible(
                                              child: Text("fdsad"),
                                            ),
                                            // Expanded(child: Container()),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 25,
                                        ),
                                        Text(
                                          "Health Condition",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.local_hospital,
                                              color: Colors.white,
                                            ),
                                            Expanded(child: Container()),
                                            Flexible(
                                              child: Text("fadsdfa"),
                                            ),
                                            // Expanded(child: Container()),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.report_problem,
                                              color: Colors.white,
                                            ),
                                            Expanded(child: Container()),
                                            Flexible(
                                              child: Text("afad"),
                                            ),
                                            // Expanded(child: Container()),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.date_range,
                                              color: Colors.white,
                                            ),
                                            Expanded(child: Container()),
                                            Flexible(
                                              child: Text("fads"),
                                            ),
                                            // Expanded(child: Container()),
                                          ],
                                        ),
                                        InkWell(
                                            // onTap: () {
                                            //   destination = false;
                                            //   // marid = data[index].hospital;
                                            //   // destinationlatlng = LatLng(
                                            //   //     data[index].lat,
                                            //   //     data[index].long);
                                            //   Navigator.of(context)
                                            //       .push(MaterialPageRoute(
                                            //     builder: (context) => Map(),
                                            //   ));
                                            // },
                                            child: Center(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.lightBlue,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 28.0,
                                                      vertical: 10),
                                              child: Text(
                                                "See on Map",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        )),
                                        SizedBox(
                                          height: 15,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              front: Container(
                                width: width,
                                // height: width / 2,
                                constraints:
                                    BoxConstraints(minHeight: width / 2),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: <Color>[
                                          Colors.yellow,
                                          Colors.orangeAccent,
                                        ])),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: width / 10,
                                    ),
                                    Text("data[index].name",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20)),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text("data[index].admitDate",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ),
                                    Container(
                                      width: width / 2,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(
                                              Icons.mobile_friendly,
                                              color: Colors.white,
                                              size: 15,
                                            ),
                                            Text(
                                                "data[index].number.toString()",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  // fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child:
                                          Text("data[index].address.toString()",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("data[index].problem",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Center(
                          child: Container(
                            height: width / 4,
                            width: width / 4,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.greenAccent),
                            child: ClipOval(
                              child: Image.network(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTF272t6tSCO1ISsyIuS4kt9610mr9Ky0nQMA&usqp=CAU",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ],
    ));
  }

  int option = 4;
}
