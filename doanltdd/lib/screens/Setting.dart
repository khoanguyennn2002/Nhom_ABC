import 'package:doanltdd/Screens/Rating.dart';
import 'package:doanltdd/Screens/Report.dart';
import 'package:doanltdd/Screens/SignInFrame.dart';
import 'package:doanltdd/main.dart';
import 'package:doanltdd/screens/Footer.dart';
import 'package:doanltdd/screens/Header.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'Home.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool music = true;
  bool volumn = true;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: (AssetImage("assets/background.jpg")),
                fit: BoxFit.cover)),
        child: Column(
          // mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Text("Setting",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      fontStyle: FontStyle.italic,
                      color: Colors.black87)),
            ),
            Container(
                alignment: Alignment.center,
                //margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                width: MediaQuery.of(context).size.width / 1.5,
                height: 270,
                decoration: BoxDecoration(
                    color: Colors.white60,
                    border: Border.all(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  volumn = !volumn;
                                });
                              },
                              icon: Icon((volumn == true)
                                  ? Icons.volume_up
                                  : Icons.volume_mute),
                              iconSize: 40,
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  music = !music;
                                });
                              },
                              icon: Icon((music == true)
                                  ? Icons.music_note
                                  : Icons.music_off),
                              iconSize: 40,
                            )
                          ]),
                      Container(
                          //margin: EdgeInsets.only(bottom: 8),
                          alignment: AlignmentDirectional.center,
                          child: SizedBox(
                            width: 150,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.green[200]?.withOpacity(0.8)),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50)))),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Report()));
                              },
                              child: Text("Phản hồi",
                                  style: TextStyle(color: Colors.black87)),
                            ),
                          )),
                      Container(
                          padding: EdgeInsets.all(8),
                          //  margin: EdgeInsets.only(bottom: 8),
                          alignment: AlignmentDirectional.center,
                          child: SizedBox(
                            width: 150,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.green[200]?.withOpacity(0.8)),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50)))),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Rating()));
                              },
                              child: Text("Đánh giá",
                                  style: TextStyle(color: Colors.black)),
                            ),
                          )),
                      Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        barrierDismissible: false,
                                        builder: (context) {
                                          return Center(
                                              child:
                                                  CircularProgressIndicator());
                                        });

                                    FirebaseAuth.instance.signOut();
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    "Đăng xuất",
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Colors.black87),
                                  ))
                            ],
                          ))
                    ])),
          ],
        ));
  }
}
