import 'package:flutter/material.dart';
import 'package:together/screens/support.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: Text("Covid Situation"),
          title: Text("Login"),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[Colors.yellow, Colors.orange])),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              "Please do Login with Mobile Number",
              style:
                  TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Mobile Number",
                  labelText: "Mobile Number",
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.yellow, width: 2)),
                ),
              ),
            ),
            SizedBox(
              height: 150,
            ),
            InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      child: Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Container(
                          height: 300,
                          width: 300,
                          child: Center(
                              child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  "Enter OTP",
                                  style: TextStyle(
                                      color: Colors.yellow,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      hintText: "Enter OTP",
                                      labelText: "Enter OTP",
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          borderSide: BorderSide(
                                              color: Colors.yellow, width: 2)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                    Navigator.pushReplacement(context,
                                        MaterialPageRoute(
                                      builder: (context) {
                                        return Support();
                                      },
                                    ));
                                  },
                                  child: Container(
                                    width: 150,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: <Color>[
                                              Colors.yellow,
                                              Colors.orange
                                            ])),
                                    child: Center(
                                      child: Text(
                                        "Verify",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )),
                        ),
                      ));
                },
                child: Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[Colors.yellow, Colors.orange])),
                  child: Center(
                    child: Text(
                      "Send OTP",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
