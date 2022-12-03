import 'dart:async';

import 'package:doanltdd/Screens/Header.dart';
import 'package:doanltdd/Screens/Home.dart';
import 'package:doanltdd/Screens/singlemode.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SinglePlayFrame extends StatefulWidget {
  SinglePlayFrame({super.key});
  @override
  State<SinglePlayFrame> createState() => _SinglePlayFrame();
}

class _SinglePlayFrame extends State<SinglePlayFrame> {
  double value = 50, value1 = 50;
  int seconds = 0, minutes = 0;
  String digitSeconds = '00', digitMinutes = '00';
  bool started = false;
  List laps = [];
  Timer? timer;

  void stopTimer() {
    timer!.cancel();
    setState(() {
      started = false;
    });
  }

  // void addLaps() {
  //   String lap = "$digitMinutes: $digitSeconds";
  //   setState(() {
  //     laps.add(lap);
  //   });
  // }

  void start() {
    started = true;
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      int localSeconds = seconds + 1;
      int localMinutes = minutes;
      if (seconds > 58) {
        localMinutes++;
        localSeconds = 0;
      }
      setState(() {
        seconds = localSeconds;
        minutes = localMinutes;
        digitSeconds = (seconds >= 10) ? "$seconds" : "0$seconds";
        digitMinutes = (minutes >= 10) ? "$minutes" : "0$minutes";
      });
    });
  }

  // void reset() {
  //   timer!.cancel();
  //   setState(() {
  //     seconds = 0;
  //     minutes = 0;
  //     digitSeconds = '00';
  //     digitMinutes = '00';
  //     start();
  //   });
  // }

  @override
  void initState() {
    super.initState();
    start();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background.jpg'), fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Header(),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Container(
                margin: EdgeInsets.all(5),
                child: TextButton(
                    onPressed: () {
                      stopTimer();
                      showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (context) {
                            return StatefulBuilder(
                                builder: (context, setState) {
                              return AlertDialog(
                                backgroundColor: Colors.white.withOpacity(0.9),
                                title: Text(
                                  'Cài đặt',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Aptima',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black87),
                                ),
                                content: Container(
                                  height: 150,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.volume_up),
                                            CupertinoSlider(
                                              value: value,
                                              min: 0,
                                              max: 100,
                                              activeColor: Colors.green,
                                              onChanged: (newValue) {
                                                value = newValue;
                                                setState(() {});
                                              },
                                            ),
                                          ]),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                      return AlertDialog(
                                                        backgroundColor: Colors
                                                            .white
                                                            .withOpacity(0.9),
                                                        title: Text(
                                                            'Cảnh báo bỏ cuộc'),
                                                        content: Text(
                                                            'Bạn có chắc là vẫn muốn bỏ cuộc và tới Home?'),
                                                        actions: [
                                                          TextButton(
                                                              onPressed: () {
                                                                Navigator.push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                        builder:
                                                                            (context) =>
                                                                                Home()));
                                                              },
                                                              child: Text(
                                                                  "Bỏ cuộc")),
                                                          TextButton(
                                                              onPressed: () {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                              child: Text(
                                                                  "Tiếp tục")),
                                                        ],
                                                      );
                                                    });
                                              },
                                              icon: Icon(Icons.home),
                                              iconSize: 40,
                                            ),
                                            IconButton(
                                              onPressed: () {
                                                showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                      return AlertDialog(
                                                        backgroundColor: Colors
                                                            .white
                                                            .withOpacity(0.9),
                                                        title: Text(
                                                            'Cảnh báo bỏ cuộc'),
                                                        content: Text(
                                                            'Bạn có chắc là vẫn muốn bỏ cuộc?'),
                                                        actions: [
                                                          TextButton(
                                                              onPressed: () {
                                                                Navigator.push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                        builder:
                                                                            (context) =>
                                                                                SingleModeFrame()));
                                                              },
                                                              child: Text(
                                                                  "Bỏ cuộc")),
                                                          TextButton(
                                                              onPressed: () {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                              child: Text(
                                                                  "Tiếp tục")),
                                                        ],
                                                      );
                                                    });
                                              },
                                              icon: Icon(Icons.map_sharp),
                                              iconSize: 40,
                                            ),
                                          ])
                                    ],
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        start();
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        'Tiếp tục',
                                        style: TextStyle(
                                          fontFamily: 'Aptima',
                                          fontSize: 15,
                                        ),
                                      ))
                                ],
                              );
                            });
                          });
                    },
                    child: Icon(
                      Icons.settings,
                      color: Colors.black87,
                      size: 35,
                    ))),
          ]),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
            decoration: BoxDecoration(
                color: Colors.white60.withOpacity(0.8),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 2, color: Colors.grey)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'Màn: ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: 'Aptima',
                            color: Colors.black87),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        '92',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: 'Aptima',
                            color: Colors.black87),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'Điểm: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                fontFamily: 'Aptima',
                                color: Colors.black87),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            '70',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                fontFamily: 'Aptima',
                                color: Colors.black87),
                          ),
                        )
                      ],
                    ),
                    Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          '$digitMinutes:$digitSeconds',
                          style: TextStyle(
                              fontFamily: 'Aptima',
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20),
                        ))
                  ],
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 50, 10, 5),
                          padding: EdgeInsets.all(5),
                          width: MediaQuery.of(context).size.width / 1.2,
                          height: MediaQuery.of(context).size.height / 5,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(width: 1, color: Colors.grey)),
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              '<<Câu hỏi ở đây!!Câu hỏi ở đây!!Câu hỏi ở đây!!Câu hỏi ở đây!!Câu hỏi ở đây!!Câu hỏi ở đây>>',
                              style: TextStyle(
                                  fontFamily: 'Aptima',
                                  fontSize: 15,
                                  color: Colors.black87),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: 20,
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 1, color: Colors.grey),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              'Câu hỏi số: 9/20',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontFamily: 'Aptima',
                                  color: Colors.black87),
                            ),
                          )),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(5, 2, 1, 5),
                  child: Text(
                    "Đáp án: ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Aptima',
                        color: Colors.black87),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(5, 5, 0.5, 2),
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                      borderRadius:
                                          BorderRadius.circular(20)))),
                          onPressed: () {},
                          child: Text(
                            'A đáp án này sai chắc luôn',
                            style: TextStyle(
                                fontFamily: 'Aptima',
                                color: Colors.black87,
                                fontSize: 15),
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0.5, 5, 5, 2),
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                      borderRadius:
                                          BorderRadius.circular(20)))),
                          onPressed: () {},
                          child: Text(
                            'B đáp án này sai chắc luôn',
                            style: TextStyle(
                                fontFamily: 'Aptima',
                                color: Colors.black87,
                                fontSize: 15),
                          )),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(5, 2, 0.5, 20),
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                      borderRadius:
                                          BorderRadius.circular(20)))),
                          onPressed: () {},
                          child: Text(
                            'C đáp án này sai chắc luôn',
                            style: TextStyle(
                                fontFamily: 'Aptima',
                                color: Colors.black87,
                                fontSize: 15),
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0.5, 2, 5, 20),
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                      borderRadius:
                                          BorderRadius.circular(20)))),
                          onPressed: () {},
                          child: Text(
                            'D đáp án này sai chắc luôn',
                            style: TextStyle(
                                fontFamily: 'Aptima',
                                color: Colors.black87,
                                fontSize: 15),
                          )),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image(
                        image: AssetImage('assets/ABC.png'),
                      ),
                      iconSize: 70,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image(
                        image: AssetImage('assets/ABC.png'),
                      ),
                      iconSize: 70,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image(
                        image: AssetImage('assets/ABC.png'),
                      ),
                      iconSize: 70,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
