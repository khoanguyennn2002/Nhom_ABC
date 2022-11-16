import 'package:doanltdd/screens/Header.dart';
import 'package:doanltdd/screens/Mission.dart';
import 'package:doanltdd/screens/Setting.dart';
import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
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
            child: SingleChildScrollView(
                child: StickyHeader(
                    header: Header(),
                    content: Column(mainAxisSize: MainAxisSize.max, children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 50, 10, 50),
                            height: 80,
                            width: 90,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50))),
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Mission()));
                                },
                                child: Image(
                                  image: AssetImage("assets/quest.png"),
                                  width: 80,
                                  height: 60,
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 50, 10, 50),
                            height: 80,
                            width: 90,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50))),
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                ),
                                onPressed: () {},
                                child: Image(
                                  image: AssetImage("assets/school-bag.png"),
                                  width: 80,
                                  height: 60,
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                              margin: EdgeInsets.only(bottom: 10),
                              height: 130,
                              width: MediaQuery.of(context).size.width,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.green[200]?.withOpacity(0.8)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0)))),
                                onPressed: () {},
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              width: 300,
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 50, 0, 20),
                                              padding: EdgeInsets.all(8),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Bạn đang ở màn 124",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.black87),
                                                  ),
                                                ],
                                              ))
                                        ],
                                      ),
                                      Text(
                                          "<<Tiếp tục hoàn thiện kiến thức nào!>>",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black87))
                                    ]),
                              )),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  "Chế độ đơn",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black87),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                              margin: EdgeInsets.only(bottom: 10),
                              height: 130,
                              width: MediaQuery.of(context).size.width,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.green[200]?.withOpacity(0.8)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0)))),
                                onPressed: () {},
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              width: 300,
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 50, 0, 20),
                                              padding: EdgeInsets.all(8),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Bậc bạc v 68/100",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.black87),
                                                  ),
                                                ],
                                              ))
                                        ],
                                      ),
                                      Text("<<Khẳng định vị trí bản thân!>>",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black87))
                                    ]),
                              )),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  "Chế độ xếp hạng",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black87),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                              margin: EdgeInsets.only(bottom: 10),
                              height: 130,
                              width: MediaQuery.of(context).size.width,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.green[200]?.withOpacity(0.8)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0)))),
                                onPressed: () {
                                  setState(() {});
                                },
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("<<Tìm hiểu thêm về trò chơi!>>",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black87))
                                        ],
                                      ),
                                    ]),
                              )),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  "Hướng dẫn",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black87),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ])))),
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
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Setting()));
                        },
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
