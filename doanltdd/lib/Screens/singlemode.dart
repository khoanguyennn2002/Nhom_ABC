import 'package:doanltdd/Screens/Footer.dart';
import 'package:doanltdd/Screens/Header.dart';
import 'package:doanltdd/Screens/Home.dart';
import 'package:doanltdd/Screens/singleplay.dart';
import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

class SingleModeFrame extends StatefulWidget {
  SingleModeFrame({super.key});

  @override
  State<SingleModeFrame> createState() => _SingleModeFrame();
}

class _SingleModeFrame extends State<SingleModeFrame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background.jpg'), fit: BoxFit.cover)),
      child: SingleChildScrollView(
        child: StickyHeader(
          header: Header(),
          content: Column(
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
                height: 90,
                margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: Colors.white60.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(35),
                    border: Border.all(width: 1, color: Colors.grey)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            'Chương: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                // fontFamily: 'Aptima',
                                color: Colors.black87),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            '1',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                // fontFamily: 'Aptima',
                                color: Colors.black87),
                          ),
                        )
                      ],
                    ),
                    Container(
                        padding: EdgeInsets.all(2),
                        width: MediaQuery.of(context).size.width / 4,
                        height: MediaQuery.of(context).size.width / 4,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
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
                                                  BorderRadius.circular(50)))),
                                  onPressed: () {
                                    //Giới thiệu chương
                                  },
                                  child: Container(
                                    padding:
                                        EdgeInsets.only(top: 10, bottom: 10),
                                    child: Image(
                                      image: AssetImage('assets/ABC.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  )),
                            ]))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
                decoration: BoxDecoration(
                    color: Colors.white60.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.grey)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            padding: EdgeInsets.fromLTRB(0, 5, 5, 0),
                            width: MediaQuery.of(context).size.width / 3,
                            height: MediaQuery.of(context).size.width / 3,
                            child: Column(children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: CircleBorder()),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SinglePlayFrame()));
                                },
                                child: Image(
                                  image: AssetImage('assets/ABC.png'),
                                  fit: BoxFit.cover, // Màn chơi
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Text(
                                  'Màn 1',
                                  style: TextStyle(
                                      //    fontFamily: 'Aptima',
                                      fontSize: 20,
                                      color: Colors.black87),
                                ),
                              )
                            ])),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width / 3,
                            height: MediaQuery.of(context).size.width / 3,
                            child: Column(children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: CircleBorder()),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SinglePlayFrame()));
                                },
                                child: Image(
                                  image: AssetImage('assets/ABC.png'),
                                  fit: BoxFit.cover, // Màn chơi
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Màn 2',
                                  style: TextStyle(
                                      //    fontFamily: 'Aptima',
                                      fontSize: 20,
                                      color: Colors.black87),
                                ),
                              )
                            ])),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width / 3,
                            height: MediaQuery.of(context).size.width / 3,
                            child: Column(children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: CircleBorder()),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SinglePlayFrame()));
                                },
                                child: Image(
                                  image: AssetImage('assets/ABC.png'),
                                  fit: BoxFit.cover, // Màn chơi
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Màn 3',
                                  style: TextStyle(
                                      //     fontFamily: 'Aptima',
                                      fontSize: 20,
                                      color: Colors.black87),
                                ),
                              )
                            ])),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width / 3,
                            height: MediaQuery.of(context).size.width / 3,
                            child: Column(children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: CircleBorder()),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SinglePlayFrame()));
                                },
                                child: Image(
                                  image: AssetImage('assets/ABC.png'),
                                  fit: BoxFit.cover, // Màn chơi
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Màn 4',
                                  style: TextStyle(
                                      //  fontFamily: 'Aptima',
                                      fontSize: 20,
                                      color: Colors.black87),
                                ),
                              )
                            ])),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width / 3,
                            height: MediaQuery.of(context).size.width / 3,
                            child: Column(children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: CircleBorder()),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SinglePlayFrame()));
                                },
                                child: Image(
                                  image: AssetImage('assets/ABC.png'),
                                  fit: BoxFit.cover, // Màn chơi
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Màn 5',
                                  style: TextStyle(
                                      //    fontFamily: 'Aptima',
                                      fontSize: 20,
                                      color: Colors.black87),
                                ),
                              )
                            ])),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
