import 'package:doanltdd/Screens/Footer.dart';
import 'package:doanltdd/Screens/Header.dart';
import 'package:doanltdd/Screens/Home.dart';
import 'package:doanltdd/Screens/history.dart';
import 'package:doanltdd/Screens/rankplay.dart';
import 'package:doanltdd/Screens/top100.dart';
import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';

class RankModeFrame extends StatefulWidget {
  RankModeFrame({super.key});
  @override
  State<RankModeFrame> createState() => _RankModeFrame();
}

class _RankModeFrame extends State<RankModeFrame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/background.jpg'),
                  fit: BoxFit.cover),
            ),
            child: SingleChildScrollView(
                child: StickyHeader(
              header: Header(),
              content: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Container(
                        margin: EdgeInsets.all(5),
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Footer()));
                            },
                            child: Icon(
                              Icons.close,
                              color: Colors.black87,
                              size: 35,
                            )))
                  ]),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 5,
                      margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Colors.white60.withOpacity(0.8)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Top100()));
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                'Bảng xếp hạng',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                   // fontFamily: 'Aptima',
                                    color: Colors.black87),
                              ),
                            ),
                            Image(
                              image: NetworkImage(
                                  'https://cdn-icons-png.flaticon.com/512/5725/5725591.png'),
                              width: MediaQuery.of(context).size.width / 4,
                              height: MediaQuery.of(context).size.width / 4,
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      )),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                    decoration: BoxDecoration(
                        color: Colors.white60.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 1, color: Colors.grey)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(5),
                                child: Text(
                                  'Rank: ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                     // fontFamily: 'Aptima',
                                      color: Colors.black87),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.all(5),
                                  padding: EdgeInsets.all(5),
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(Colors
                                                .green[200]
                                                ?.withOpacity(0.8)),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    HistoryFrame()));
                                      },
                                      child: Text(
                                        'Lịch sử',
                                        style: TextStyle(
                                            fontSize: 15,
                                            //fontFamily: 'Aptima',
                                            color: Colors.black87),
                                      )))
                            ]),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.7,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(width: 1, color: Colors.grey)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(5),
                                child: Text(
                                  'Bạc',
                                  style: TextStyle(
                                      fontSize: 15,
                                     // fontFamily: 'Aptima',
                                      color: Colors.black87),
                                ),
                              ),
                              Row(children: [
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    '68',
                                    style: TextStyle(
                                        fontSize: 15,
                                       // fontFamily: 'Aptima',
                                        color: Colors.black87),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    'điểm',
                                    style: TextStyle(
                                        fontSize: 15,
                                       // fontFamily: 'Aptima',
                                        color: Colors.black87),
                                  ),
                                ),
                              ])
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'Số trận đã chơi:',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              //  fontFamily: 'Aptima',
                                color: Colors.black87),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.7,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(width: 1, color: Colors.grey)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(5),
                                child: Text(
                                  '188',
                                  style: TextStyle(
                                      fontSize: 15,
                                     // fontFamily: 'Aptima',
                                      color: Colors.black87),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'Tỉ lệ thắng:',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              //  fontFamily: 'Aptima',
                                color: Colors.black87),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.7,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(width: 1, color: Colors.grey)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(5),
                                child: Text(
                                  '21,3',
                                  style: TextStyle(
                                      fontSize: 15,
                                   //   fontFamily: 'Aptima',
                                      color: Colors.black87),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5),
                                child: Text(
                                  '%',
                                  style: TextStyle(
                                      fontSize: 15,
                                  //    fontFamily: 'Aptima',
                                      color: Colors.black87),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(Colors
                                                  .green[200]
                                                  ?.withOpacity(0.8)),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      RankplayFrame()));
                                        },
                                        child: Text(
                                          'Tìm trận',
                                          style: TextStyle(
                                              fontSize: 15,
                                              //fontFamily: 'Aptima',
                                              color: Colors.black87),
                                        ))),
                              )
                            ])
                      ],
                    ),
                  )
                ],
              ),
            ))));
  }
}
