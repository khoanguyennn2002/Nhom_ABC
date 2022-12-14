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
                            child: Text('???'),
                          ),
                        ),
                        Flexible(
                          child: ElevatedButton(
                            onPressed: () => _controller.nextPage(),
                            child: Text('???'),
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
        '??? m??n h??nh ch??nh b???n c???n ch???n ch??? ????? ????? b???t ?????u tr?? ch??i , c?? 2 ch??? ????? ch??i : ch??i ????n v?? ch??i x???p h???ng , ??? ch??? ????? x???p h???ng b???n c???n ?????t ????? lv10 ????? tham gia',
    title: 'Ch???n ch??? ????? ch??i:',
  ),
  Item(
    text:
        'Sau khi ?????c c??u h???i b???n nh???n v??o 1 trong 4 ????p ??n ????? tr??? l???i c??u h???i ',
    title: 'C??ch ch???n ????p ??n:',
  ),
  Item(
    text:
        'Ng?????i ch??i c???n mua v???t ph???m ??? shop ????? c?? th??? s??? d???ng trong m??n ch??i , ti???n mua v???t ph???m ki???m ???????c b???ng c??ch ho??n th??nh c??c m??n ch??i',
    title: 'C??ch d??ng v???t ph???m:',
  ),
];
