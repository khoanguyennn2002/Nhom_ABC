import 'package:doanltdd/Screens/Home.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';

import 'Footer.dart';

class Guilde extends StatefulWidget {
  Guilde({super.key});
  @override
  State<Guilde> createState() => _Guilde();
}

final CarouselController _controller = CarouselController();

class _Guilde extends State<Guilde> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/background.jpg'), fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                        ))),
              ],
            ),
          ),
          Container(
            width: 250,
            height: 400,
            margin: EdgeInsets.all(5),
            // padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white60,
              border: Border.all(color: Colors.black, width: 1),
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                    ),
                  ),
                  // color: Colors.orange,
                  width: 250,
                  height: 300,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: 300.0,
                      enlargeCenterPage: true,
                    ),
                    carouselController: _controller,
                    items: lstItem.map<Widget>((lstItem) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: 450,
                            margin: EdgeInsets.symmetric(horizontal: 1),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                topLeft: Radius.circular(15),
                              ),
                              color: Colors.green[200],
                            ),
                            child: Container(
                              margin: EdgeInsets.all(5),
                              // color: Colors.red,
                              child: Column(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    lstItem.title,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    lstItem.text,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                    ),
                                    overflow: TextOverflow.clip,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
                Divider(
                  height: 0,
                  thickness: 2,
                  indent: 0,
                  endIndent: 0,
                  color: Colors.black,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Flexible(
                          child: ElevatedButton(
                            onPressed: () => _controller.previousPage(),
                            child: Text('←'),
                          ),
                        ),
                        Flexible(
                          child: ElevatedButton(
                            onPressed: () => _controller.nextPage(),
                            child: Text('→'),
                          ),
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Item {
  Item({
    required this.title,
    required this.text,
  });
  String text;
  String title;
}

List<Item> lstItem = [
  Item(
    text:
        'Ở màn hình chính bạn cần chọn chế độ để bắt đầu trò chơi , có 2 chế độ chơi : chơi đơn và chơi xếp hạng , ở chế độ xếp hạng bạn cần đạt đủ lv10 để tham gia',
    title: 'Chọn chế độ chơi:',
  ),
  Item(
    text:
        'Sau khi đọc câu hỏi bạn nhấn vào 1 trong 4 đáp án để trả lời câu hỏi ',
    title: 'Cách chọn đáp án:',
  ),
  Item(
    text:
        'Người chơi cần mua vật phẩm ở shop để có thể sử dụng trong màn chơi , tiền mua vật phẩm kiếm được bằng cách hoàn thành các màn chơi',
    title: 'Cách dùng vật phẩm:',
  ),
];
