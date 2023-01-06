import 'dart:async';

import 'package:doanltdd/Screens/Header.dart';
import 'package:doanltdd/Screens/Home.dart';
import 'package:doanltdd/Screens/singlemode.dart';
import 'package:flutter/material.dart';
import 'Footer.dart';
import 'modelQuestion.dart';

class SinglePlayFrame extends StatefulWidget {
  SinglePlayFrame({super.key});

  @override
  State<SinglePlayFrame> createState() => _SinglePlayFrame();
}

class _SinglePlayFrame extends State<SinglePlayFrame> {
  late PageController _pagecontroller;
  int _questionNumber = 1;
  int _score1 = 0;
  bool music = true;
  bool volumn = true;
  int _score = 0;
  int seconds = 0, minutes = 0;
  String digitSeconds = '00', digitMinutes = '00';
  bool started = false;
  String _lap = '';
  Timer? timer;

  void stopTimer() {
    timer!.cancel();
    setState(() {
      started = false;
    });
  }

  void addLaps() {
    setState(() {
      _lap = "$digitMinutes: $digitSeconds";
    });
  }

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

  @override
  void initState() {
    super.initState();
    start();
    _pagecontroller = PageController(initialPage: 0);
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
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  volumn = !volumn;
                                                });
                                              },
                                              icon: Icon((volumn == false)
                                                  ? Icons.volume_up
                                                  : Icons.volume_mute)),
                                          IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  music = !music;
                                                });
                                              },
                                              icon: Icon((music == false)
                                                  ? Icons.music_note
                                                  : Icons.music_off))
                                        ],
                                      ),
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
                                                                                Footer()));
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
            height: MediaQuery.of(context).size.height / 1.3,
            margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
            decoration: BoxDecoration(
                color: Colors.white60.withOpacity(0.8),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 2, color: Colors.grey)),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          'Màn chơi',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: 'Aptima',
                              color: Colors.black87),
                        ),
                      ),
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
                              'Điểm: $_score',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontFamily: 'Aptima',
                                  color: Colors.black87),
                            ),
                          ),
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
                  Container(
                      margin: EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 2, color: Colors.grey),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          'Câu hỏi số: $_questionNumber/${Stage1.length}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: 'Aptima',
                              color: Colors.black87),
                        ),
                      )),
                  Container(
                    height: MediaQuery.of(context).size.height / 2.2,
                    child: PageView.builder(
                        controller: _pagecontroller,
                        itemCount: Stage1.length,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: ((context, index) {
                          final _question = Stage1[index];
                          return buildQuestion(_question);
                        })),
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
          )
        ],
      ),
    ));
  }

  Column buildQuestion(Chapter1 question) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width / 1.1,
          height: MediaQuery.of(context).size.height / 5,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 1, color: Colors.grey)),
          child: SingleChildScrollView(
            child: Text(
              question.text,
              style: TextStyle(
                  fontFamily: 'Aptima', fontSize: 22, color: Colors.black87),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
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
          ],
        ),
        Expanded(
            child: OptionsWidget(
          question: question,
          onClickedOption: (option) {
            if (question.isLocked) {
              return;
            } else {
              setState(() {
                question.isLocked = true;
                question.selectedOption = option;
              });
              if (question.selectedOption!.isCorrect) {
                _score1++;
                _score = _score + 100;
              }
            }
            if (_questionNumber < Stage1.length) {
              _pagecontroller.nextPage(
                duration: Duration(milliseconds: 450),
                curve: Curves.easeInExpo,
              );
              setState(() {
                _questionNumber++;
              });
            } else {
              addLaps();
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultPage(
                            score1: _score,
                            score: _score1,
                            lap: _lap,
                          )));
            }
          },
        ))
      ],
    );
  }
}

class OptionsWidget extends StatelessWidget {
  final Chapter1 question;
  final ValueChanged<Option> onClickedOption;
  const OptionsWidget({
    Key? key,
    required this.question,
    required this.onClickedOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Column(
          children: question.options
              .map((option) => buildOption(context, option))
              .toList(),
        ),
      );
  Widget buildOption(BuildContext context, Option option) {
    final color = getColorForOption(option, question);
    return GestureDetector(
        onTap: () => onClickedOption(option),
        child: Container(
            margin: EdgeInsets.only(top: 5),
            height: MediaQuery.of(context).size.height / 25,
            width: MediaQuery.of(context).size.width / 1.1,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 1, color: color),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: EdgeInsets.only(bottom: 5, left: 3),
                    child: Text(
                      option.text,
                      style: TextStyle(
                          fontFamily: 'Aptima',
                          color: Colors.black87,
                          fontSize: 20),
                    )),
                getIconForOption(option, question)
              ],
            )));
  }

  Color getColorForOption(Option option, Chapter1 question) {
    final isSelected = option == question.selectedOption;
    if (question.isLocked) {
      if (isSelected) {
        return option.isCorrect ? Colors.green : Colors.red;
      } else if (option.isCorrect) {
        return Colors.green;
      }
    }
    return Colors.grey;
  }

  Widget getIconForOption(Option option, Chapter1 question) {
    final isSelected = option == question.selectedOption;
    if (question.isLocked) {
      if (isSelected && option.isCorrect == true) {
        return Icon(
          Icons.check_circle,
          color: Colors.green,
        );
      } else if (isSelected) {
        return Icon(
          Icons.cancel,
          color: Colors.red,
        );
      }
    }
    return SizedBox.shrink();
  }
}

class ResultPage extends StatelessWidget {
  ResultPage({
    Key? key,
    required this.score1,
    required this.lap,
    required this.score,
  }) : super(key: key);
  final int score1;
  final int score;

  String lap;

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
            child: Container(
              margin: EdgeInsets.fromLTRB(20, 250, 20, 250),
              decoration: BoxDecoration(
                  color: Colors.white60.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(width: 2, color: Colors.grey)),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Text(
                  'Kết quả đạt được:',
                  style: TextStyle(
                      fontFamily: 'Aptima',
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                    margin: EdgeInsets.only(top: 50, bottom: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Số câu đúng: $score / 10',
                          style: TextStyle(
                              fontFamily: 'Aptima',
                              color: Colors.black87,
                              fontSize: 20),
                        ),
                        Text(
                          'Số điểm đạt được: $score1',
                          style: TextStyle(
                              fontFamily: 'Aptima',
                              color: Colors.black87,
                              fontSize: 20),
                        ),
                        Text(
                          'Thời gian: $lap',
                          style: TextStyle(
                              fontFamily: 'Aptima',
                              color: Colors.black87,
                              fontSize: 20),
                        ),
                      ],
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SinglePlayFrame()));
                      },
                      icon: Icon(
                        Icons.replay,
                      ),
                      iconSize: 40,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SingleModeFrame()));
                      },
                      icon: Icon(
                        Icons.skip_next,
                      ),
                      iconSize: 50,
                    ),
                  ],
                )
              ]),
            )));
  }
}
