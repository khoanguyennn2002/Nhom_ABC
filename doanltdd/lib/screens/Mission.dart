import 'package:doanltdd/screens/Header.dart';
import 'package:flutter/material.dart';
import 'Footer.dart';
import 'Header.dart';

class Mission extends StatefulWidget {
  const Mission({super.key});

  @override
  State<Mission> createState() => _MissionState();
}

class _MissionState extends State<Mission> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
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
              height: MediaQuery.of(context).size.height / 2,
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
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Nhiệm vụ",
                                    style: TextStyle(color: Colors.black87),
                                  )),
                            )),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: ElevatedButton(
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
                        width: 200,
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
    );
  }
}
