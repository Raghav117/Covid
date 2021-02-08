import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Upload extends StatefulWidget {
  @override
  _UploadState createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
          // title: Text("Covid Situation"),
          title: Text("Upload"),
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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
            ),
            pimage != null ? Container(child: Image.file(pimage)) : Container(),
            SizedBox(
              height: 60,
            ),
            InkWell(
              onTap: () {
                getProfileImage();
                setState(() {});
                // Navigator.push(context, MaterialPageRoute(
                //   builder: (context) {
                //     return Upload();
                //   },
                // ));
              },
              child: Center(
                child: Container(
                  width: width / 3,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[Colors.yellow, Colors.orange])),
                  child: Center(
                    child: Text(
                      "Profile Picture",
                      style: TextStyle(
                        // fontSize: 18,
                        color: Colors.white,
                        // fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            aimage != null ? Container(child: Image.file(aimage)) : Container(),
            SizedBox(
              height: 60,
            ),
            InkWell(
              onTap: () {
                getAdhaarImage();
                setState(() {});
                // Navigator.push(context, MaterialPageRoute(
                //   builder: (context) {
                //     return Upload();
                //   },
                // ));
              },
              child: Center(
                child: Container(
                  width: width / 3,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[Colors.yellow, Colors.orange])),
                  child: Center(
                    child: Text(
                      "Adhaar Card",
                      style: TextStyle(
                        // fontSize: 18,
                        color: Colors.white,
                        // fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    child: Dialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        height: 200,
                        width: 300,
                        child: Center(
                          child: Text(
                            "Your's Documents is Successfully Uploaded...",
                            style: TextStyle(
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )).whenComplete(() {
                  Navigator.pop(context);
                  Navigator.pop(context);
                });
              },
              child: Center(
                child: Container(
                  width: width / 3,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[Colors.yellow, Colors.orange])),
                  child: Center(
                    child: Text(
                      "Upload",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }

  File pimage, aimage;

  getAdhaarImage() async {
    aimage = await ImagePicker.pickImage(
      source: ImageSource.camera,
    );
    setState(() {});
  }

  getProfileImage() async {
    pimage = await ImagePicker.pickImage(
      source: ImageSource.camera,
    );
    setState(() {});
  }
}
