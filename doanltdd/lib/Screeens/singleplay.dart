import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

class SinglePlayFrame extends StatefulWidget {
  SinglePlayFrame({super.key});
  @override
  State<SinglePlayFrame> createState() => _SinglePlayFrame();
}

class _SinglePlayFrame extends State<SinglePlayFrame> {
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
                                              SingleModeFrame()));
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
                                              SingleModeFrame()));
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
                                '02:39',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    fontFamily: 'Aptima',
                                    color: Colors.black87),
                              ),
                            )
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
                            Container(
                                margin: EdgeInsets.all(5),
                                width: MediaQuery.of(context).size.width / 5,
                                height: MediaQuery.of(context).size.width / 5,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white60.withOpacity(0.8)),
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
                                  child: Image(
                                    image: AssetImage('assets/ABC.png'),
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height,
                                    fit: BoxFit.cover,
                                  ),
                                )),
                            Container(
                                margin: EdgeInsets.all(5),
                                width: MediaQuery.of(context).size.width / 5,
                                height: MediaQuery.of(context).size.width / 5,
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(Colors
                                                .white60
                                                .withOpacity(0.8)),
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                side: BorderSide(
                                                  color: Colors.grey,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20)))),
                                    onPressed: () {},
                                    child: Image(
                                      image: AssetImage('assets/ABC.png'),
                                      width:
                                          MediaQuery.of(context).size.width / 5,
                                      height:
                                          MediaQuery.of(context).size.width / 5,
                                      fit: BoxFit.cover,
                                    ))),
                            Container(
                                margin: EdgeInsets.all(5),
                                width: MediaQuery.of(context).size.width / 5,
                                height: MediaQuery.of(context).size.width / 5,
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(Colors
                                                .white60
                                                .withOpacity(0.8)),
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                side: BorderSide(
                                                  color: Colors.grey,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20)))),
                                    onPressed: () {},
                                    child: Image(
                                      image: AssetImage('assets/ABC.png'),
                                      width:
                                          MediaQuery.of(context).size.width / 5,
                                      height:
                                          MediaQuery.of(context).size.width / 5,
                                      fit: BoxFit.cover,
                                    )))
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ))));
  }
}
