import 'package:doanltdd/Screens/Header.dart';
import 'package:doanltdd/Screens/rankmode.dart';
import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';

class RankplayFrame extends StatefulWidget {
  RankplayFrame({super.key});
  @override
  State<RankplayFrame> createState() => _RankplayFrame();
}

class _RankplayFrame extends State<RankplayFrame> {
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
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  Icons.settings,
                                  color: Colors.black87,
                                  size: 35,
                                ))),
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
                                ))),
                      ]),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    decoration: BoxDecoration(
                        color: Colors.white60.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 1, color: Colors.grey)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    margin: EdgeInsets.all(5),
                                    child: Icon(
                                      Icons.account_circle_outlined,
                                      size: 50,
                                    )),
                                Text(
                                  '<<Điểm>>',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      //  fontFamily: 'Aptima',
                                      color: Colors.black87),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: Text(
                                '00:29',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    //   fontFamily: 'Aptima',
                                    color: Colors.black87),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    margin: EdgeInsets.all(5),
                                    child: Icon(
                                      Icons.account_circle_outlined,
                                      size: 50,
                                    )),
                                Text(
                                  '<<Điểm>>',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    // fontFamily: 'Aptima'
                                  ),
                                ),
                              ],
                            ),
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
                                  width:
                                      MediaQuery.of(context).size.width / 1.2,
                                  height:
                                      MediaQuery.of(context).size.height / 5,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 1, color: Colors.grey)),
                                  child: Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Text(
                                      '<<Câu hỏi ở đây!!Câu hỏi ở đây!!Câu hỏi ở đây!!Câu hỏi ở đây!!Câu hỏi ở đây!!Câu hỏi ở đây>>',
                                      style: TextStyle(
                                          //   fontFamily: 'Aptima',
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
                                    border: Border.all(
                                        width: 1, color: Colors.grey),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Text(
                                      'Câu hỏi số: 9/20',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          //     fontFamily: 'Aptima',
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
                                // fontFamily: 'Aptima',
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
                                          MaterialStateProperty.all(
                                              Colors.white),
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
                                        // fontFamily: 'Aptima',
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
                                          MaterialStateProperty.all(
                                              Colors.white),
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
                                        // fontFamily: 'Aptima',
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
                                          MaterialStateProperty.all(
                                              Colors.white),
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
                                        //    fontFamily: 'Aptima',
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
                                          MaterialStateProperty.all(
                                              Colors.white),
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
                                        //   fontFamily: 'Aptima',
                                        color: Colors.black87,
                                        fontSize: 15),
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ))));
  }
}
