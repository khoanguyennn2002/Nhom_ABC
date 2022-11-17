import 'package:doanltdd/screens/Setting.dart';
import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';

import 'Footer.dart';
import 'Header.dart';
import 'Home.dart';

class Mission extends StatefulWidget {
  const Mission({super.key});

  @override
  State<Mission> createState() => _MissionState();
}

class _MissionState extends State<Mission> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: (AssetImage("assets/background.jpg")), fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Header(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Footer()));
                        });
                      },
                      child: Text(
                        "X",
                        style: TextStyle(color: Colors.black87, fontSize: 30),
                      )))
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Text("Nhiệm vụ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    color: Colors.black87)),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              width: MediaQuery.of(context).size.width / 1.5,
              height: MediaQuery.of(context).size.height / 1.5,
              decoration: BoxDecoration(
                  color: Colors.white60,
                  border: Border.all(width: 1, color: Colors.black),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(Colors
                                              .green[200]
                                              ?.withOpacity(0.8))),
                                  onPressed: () {},
                                  child: Text(
                                    "Nhiệm vụ",
                                    style: TextStyle(color: Colors.black87),
                                  )),
                            )),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.green[200]?.withOpacity(0.8))),
                              onPressed: () {},
                              child: Text("Thành Tựu",
                                  style: TextStyle(color: Colors.black87))),
                        )
                      ],
                    ),
                    Row(children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 10, 20, 0),
                        height: 80,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(width: 1, color: Colors.black87)),
                        child: Text("Đăng nhập lần đầu trong ngày"),
                      ),
                      Text(("1/1"))
                    ]),
                  ])),
        ],
      ),
    ));
  }
}
