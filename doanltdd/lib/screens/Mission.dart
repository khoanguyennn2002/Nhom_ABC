import 'package:flutter/material.dart';

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
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
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
                              borderRadius: BorderRadius.circular(10),
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(Colors
                                              .green[200]
                                              ?.withOpacity(0.8))),
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
                                border: Border.all(
                                    width: 1, color: Colors.black87)),
                            child: Text("Đăng nhập lần đầu trong ngày"),
                          ),
                          Text(("1/1"))
                        ]),
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
                        onPressed: () {},
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
