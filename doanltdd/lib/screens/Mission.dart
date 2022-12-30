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
  final controller = PageController(initialPage: 0);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Container(
                margin: EdgeInsets.all(5),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Footer()));
                    },
                    child: Icon(
                      Icons.close,
                      color: Colors.black87,
                      size: 35,
                    )))
          ]),
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Text("Nhiệm vụ & Thành tựu",
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
              child: PageView(
                controller: controller,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Column(
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
                                      onPressed: () => controller.previousPage(
                                          duration: Duration(milliseconds: 500),
                                          curve: Curves.easeInOut),
                                      child: Text(
                                        "Nhiệm vụ",
                                        style: TextStyle(color: Colors.black87),
                                      )),
                                )),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(Colors
                                              .green[200]
                                              ?.withOpacity(0.8))),
                                  onPressed: () => controller.nextPage(
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.easeInOut),
                                  child: Text("Thành Tựu",
                                      style: TextStyle(color: Colors.black87))),
                            )
                          ],
                        ),
                        Row(children: [
                          Container(
                            padding: EdgeInsets.all(10),
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
                      ]),
                  Column(
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
                                      onPressed: () => controller.previousPage(
                                          duration: Duration(milliseconds: 500),
                                          curve: Curves.easeInOut),
                                      child: Text(
                                        "Nhiệm vụ",
                                        style: TextStyle(color: Colors.black87),
                                      )),
                                )),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
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
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.fromLTRB(10, 10, 20, 0),
                            height: 80,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    width: 1, color: Colors.black87)),
                            child: Text("Đạt rank vàng"),
                          ),
                          Text(("1/1"))
                        ]),
                      ]),
                ],
              )),
        ],
      ),
    ));
  }
}
