import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  double value = 0;
  double value1 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: (AssetImage("assets/background.jpg")),
                  fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Text("Setting",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                        color: Colors.black87)),
              ),
              Container(
                  //margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  width: MediaQuery.of(context).size.width / 1.5,
                  decoration: BoxDecoration(
                      color: Colors.white60,
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.volume_up),
                            CupertinoSlider(
                              value: value,
                              min: 0,
                              max: 100,
                              activeColor: Colors.green,
                              onChanged: (newValue) {
                                setState(() {
                                  value = newValue;
                                });
                              },
                            )
                          ],
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.music_note),
                              CupertinoSlider(
                                value: value1,
                                min: 0,
                                max: 100,
                                activeColor: Colors.green,
                                onChanged: (newValue) {
                                  setState(() {
                                    value1 = newValue;
                                  });
                                },
                              ),
                            ]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [],
                        ),
                        Container(
                            margin: EdgeInsets.only(bottom: 10),
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
                                onPressed: () {},
                                child: Text("Báo cáo",
                                    style: TextStyle(color: Colors.black87)),
                              ),
                            )),
                        Container(
                            padding: EdgeInsets.all(8),
                            margin: EdgeInsets.only(bottom: 10),
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
                                onPressed: () {},
                                child: Text("Cài đặt tài khoản",
                                    style: TextStyle(color: Colors.black)),
                              ),
                            )),
                        Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                    onPressed: () {},
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
          ),
        ),
        bottomNavigationBar: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: BottomAppBar(
              color: Colors.green[200]?.withOpacity(0.8),
              child: Container(
                  height: MediaQuery.of(context).size.height / 9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50))),
                        ),
                        onPressed: () {},
                        child: Icon(
                          Icons.store,
                          color: Colors.black87,
                          size: 50,
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50))),
                        ),
                        onPressed: () {
                          Navigator.of(context)
                              .popUntil((route) => route.isFirst);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                        child: Icon(
                          Icons.home,
                          color: Colors.black87,
                          size: 50,
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50))),
                        ),
                        onPressed: () {},
                        child: Icon(
                          Icons.settings,
                          color: Colors.black87,
                          size: 50,
                        ),
                      )
                    ],
                  )),
            )));
  }
}
