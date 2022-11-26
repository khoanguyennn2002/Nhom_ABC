import 'package:doanltdd/Screens/Header.dart';
import 'package:doanltdd/Screens/rankmode.dart';
import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';

class HistoryFrame extends StatefulWidget {
  HistoryFrame({super.key});

  @override
  State<HistoryFrame> createState() => _HistoryFrame();
}

class _HistoryFrame extends State<HistoryFrame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/background.jpg'),
                    fit: BoxFit.cover)),
            child: SingleChildScrollView(
                child: StickyHeader(
                    header: Header(),
                    content: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                    margin: EdgeInsets.all(5),
                                    child: TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      RankModeFrame()));
                                        },
                                        child: Icon(
                                          Icons.close,
                                          color: Colors.black87,
                                          size: 35,
                                        )))
                              ]),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                            decoration: BoxDecoration(
                                color: Colors.white60.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(20),
                                border:
                                    Border.all(width: 1, color: Colors.grey)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '  Lịch sử đấu:',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Aptima',
                                      color: Colors.black87),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 1, color: Colors.grey)),
                                  child: Row(children: [
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 2, 10, 2),
                                        child: Text(
                                          'win',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontFamily: 'Aptima',
                                              color: Colors.black87),
                                        )),
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 2, 2, 2),
                                        child: Text('thời gian',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Aptima',
                                                color: Colors.black87)))
                                  ]),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 1, color: Colors.grey)),
                                  child: Row(children: [
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 2, 10, 2),
                                        child: Text('lose',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Aptima',
                                                color: Colors.black87))),
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 2, 2, 2),
                                        child: Text('thời gian',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Aptima',
                                                color: Colors.black87)))
                                  ]),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 1, color: Colors.grey)),
                                  child: Row(children: [
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 2, 10, 2),
                                        child: Text('win',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Aptima',
                                                color: Colors.black87))),
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 2, 2, 2),
                                        child: Text('thời gian',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Aptima',
                                                color: Colors.black87)))
                                  ]),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 1, color: Colors.grey)),
                                  child: Row(children: [
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 2, 10, 2),
                                        child: Text('lose',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Aptima',
                                                color: Colors.black87))),
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 2, 2, 2),
                                        child: Text('thời gian',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Aptima',
                                                color: Colors.black87)))
                                  ]),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 1, color: Colors.grey)),
                                  child: Row(children: [
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 2, 10, 2),
                                        child: Text('win',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Aptima',
                                                color: Colors.black87))),
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 2, 2, 2),
                                        child: Text('thời gian',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Aptima',
                                                color: Colors.black87)))
                                  ]),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 1, color: Colors.grey)),
                                  child: Row(children: [
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 2, 10, 2),
                                        child: Text('win',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Aptima',
                                                color: Colors.black87))),
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 2, 2, 2),
                                        child: Text('thời gian',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Aptima',
                                                color: Colors.black87)))
                                  ]),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 1, color: Colors.grey)),
                                  child: Row(children: [
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 2, 10, 2),
                                        child: Text('win',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Aptima',
                                                color: Colors.black87))),
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 2, 2, 2),
                                        child: Text('thời gian',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Aptima',
                                                color: Colors.black87)))
                                  ]),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 1, color: Colors.grey)),
                                  child: Row(children: [
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 2, 10, 2),
                                        child: Text('lose',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Aptima',
                                                color: Colors.black87))),
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 2, 2, 2),
                                        child: Text('thời gian',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Aptima',
                                                color: Colors.black87)))
                                  ]),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 1, color: Colors.grey)),
                                  child: Row(children: [
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 2, 10, 2),
                                        child: Text('win',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Aptima',
                                                color: Colors.black87))),
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 2, 2, 2),
                                        child: Text('thời gian',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Aptima',
                                                color: Colors.black87)))
                                  ]),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 1, color: Colors.grey)),
                                  child: Row(children: [
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 2, 10, 2),
                                        child: Text('lose',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Aptima',
                                                color: Colors.black87))),
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 2, 2, 2),
                                        child: Text('thời gian',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Aptima',
                                                color: Colors.black87)))
                                  ]),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 1, color: Colors.grey)),
                                  child: Row(children: [
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 2, 10, 2),
                                        child: Text('lose',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Aptima',
                                                color: Colors.black87))),
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 2, 2, 2),
                                        child: Text('thời gian',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Aptima',
                                                color: Colors.black87)))
                                  ]),
                                )
                              ],
                            ),
                          )
                        ])))));
  }
}
