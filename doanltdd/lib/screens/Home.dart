import 'package:doanltdd/Screens/Bag.dart';
import 'package:doanltdd/Screens/Guilde.dart';
import 'package:doanltdd/Screens/rankmode.dart';
import 'package:doanltdd/Screens/singlemode.dart';
import 'package:doanltdd/screens/Footer.dart';
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
    return Container(
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
                                      borderRadius: BorderRadius.circular(30))),
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
                                      borderRadius: BorderRadius.circular(30))),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Bag()));
                            },
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
                                            BorderRadius.circular(15)))),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SingleModeFrame()));
                            },
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          width: 300,
                                          margin:
                                              EdgeInsets.fromLTRB(0, 50, 0, 20),
                                          padding: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "B???n ??ang ??? m??n 124",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black87),
                                              ),
                                            ],
                                          ))
                                    ],
                                  ),
                                  Text("<<Ti???p t???c ho??n thi???n ki???n th???c n??o!>>",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black87))
                                ]),
                          )),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Text(
                              "Ch??? ????? ????n",
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
                                            BorderRadius.circular(15)))),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RankModeFrame()));
                            },
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          width: 300,
                                          margin:
                                              EdgeInsets.fromLTRB(0, 50, 0, 20),
                                          padding: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "B???c b???c v 68/100",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black87),
                                              ),
                                            ],
                                          ))
                                    ],
                                  ),
                                  Text("<<Kh???ng ?????nh v??? tr?? b???n th??n!>>",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black87))
                                ]),
                          )),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Text(
                              "Ch??? ????? x???p h???ng",
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
                                            BorderRadius.circular(15)))),
                            onPressed: () {
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Guilde()));
                              });
                            },
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("<<T??m hi???u th??m v??? tr?? ch??i!>>",
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
                                borderRadius: BorderRadius.circular(15)),
                            child: Text(
                              "H?????ng d???n",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black87),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ]))));
  }
}
