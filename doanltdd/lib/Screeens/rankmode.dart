import 'package:flutter/material.dart';

class RankModeFrame extends StatefulWidget {
  RankModeFrame({super.key});
  @override
  State<RankModeFrame> createState() => _RankModeFrame();
}

class _RankModeFrame extends State<RankModeFrame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background.jpg'), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 5,
              margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 54, 134, 57).withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1, color: Colors.grey)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Bảng xếp hạng',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 54, 134, 57).withOpacity(0.8),
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
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.all(5),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.blue),
                                ),
                                onPressed: () {},
                                child: Text('Lịch sử')))
                      ]),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.7,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 244, 233, 199),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 1, color: Colors.black)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'Bạc',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            '68',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'Điểm',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Số trận đã chơi:',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.7,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 244, 233, 199),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 1, color: Colors.black)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            '188',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Tỉ lệ thắng:',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.7,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 244, 233, 199),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 1, color: Colors.black)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            '21,3',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            '%',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Container(
                      child: Padding(
                          padding: EdgeInsets.all(10),
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blue),
                              ),
                              onPressed: () {},
                              child: Text('Tìm trận'))),
                    )
                  ])
                ],
              ),
            )
          ],
        ),
      ),
      // Header(),
      // Footer()
    ]));
  }
}
